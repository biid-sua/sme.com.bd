<?php
session_start();
require_once("antihack.php");

$cart = Array();

$cartarray = $_SESSION['SHC_Cookie'];
if(trim(str_replace(",","",$cartarray)) != '')
	$cart = explode(",", $cartarray);
?>
<script type="text/javascript" src="<?php echo $scriptpath;?>thickbox-compressed.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo $scriptpath;?>thickbox.css">
<p>
	<div style="float:left;margin-left:20px;" id="orderall">
	<?php if(count($cart) > 0){
		if(empty($_SESSION['uid'])){?>
		Please <a href="index.php?detail=register">Register</a> or <a href="index.php?detail=login">Login</a> to order products now
	<?php }else{?>
		<a href="javascript:OrderAll()">Order All Products Now</a>
	<?php }
	}?>
	</div>
	<div style="float:right">
		<select id="cartopt" onChange="getCartOpt(this.value)">
			<option value="" style="font-weight:bold;background-color:#999999;color:#ffffff;">Cart options</option>
			<?php if(!empty($_SESSION['uid']) && count($cart) > 0){?><option value="order">Order all</option><?php }?>
			<?php if(count($cart) > 0){?><option value="delall">Remove all</option><?php }?>
		</select>
	</div>
	<br><br><br>
	
	<?php if($_GET['action']=='message'){?>
	<table width="620" border="0" cellspacing="0" cellpadding="0">
	  <tr>
		<td style="padding:20px 20px 20px 20px;"><span style='padding:10px 20px 10px 10px;color:green;font-size:12px;'>Your order has been placed successfully !!!<br>&nbsp;&nbsp;&nbsp;You can contact the producer over the phone.</span></td>
	  </tr>
	</table>
	<?php }?>
	
	<div style="height:1px;"></div>
	<div id="waiting" style="margin-left:25px;opacity:0;filter:alpha(opacity=0)"><span style='padding:5px;' class='light_bg'>Please Wait...</span></div>
	<script type="text/javascript">
	$("#waiting").css({'opacity':'0'});
	</script>
	<br>
	<div id="orderconfirm" align="left" style="margin-left:25px;display:none"></div>
	<div id="cartcontent" align="left">
	<?php
	if(count($cart) > 0){
	?>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
	<?php
	$icount = 0;
	$jcount = 0;
	foreach($cart as $item)
	{
		$property = explode(":", $item);
		$itemid = trim($property[0]);
		$itemcount = trim($property[1]);
		$icount++;
		$qry = "SELECT * FROM ".$db_prefix."prods WHERE id=".$itemid;
		$res = mysql_query($qry);
		if(mysql_num_rows($res) > 0)
		{
		$rs = mysql_fetch_assoc($res);
				$jcount++;
			?>
			<td align="center" valign="top">
				<table cellspacing="0" cellpadding="0" border="0" width="168" height="216" bgcolor="#FFFFFF">
					<tr>
						<td colspan="3" background="images/prod_top_bg.jpg" height="16"></td>
					</tr>
					<tr>
						<td style="width:7px;" background="images/prod_left_bg.jpg"></td>
						<td height="161" width="154" align="center" valign="middle">
							<a href="#TB_inline?height=300&width=400&inlineId=sendemail" class="thickbox" onClick="OrderItem(<?php echo $rs['id'];?>)"><img src="<?php if(file_exists($imgupthumbpath.$rs['prod_image'])){echo $imgupthumbpath.$rs['prod_image'];}else{echo $imagepath."nopicture.gif";}?>"></a>
						</td>
						<td style="width:7px;" background="images/prod_right_bg.jpg"></td>
					</tr>
					<tr>
						<td colspan="3" background="images/prod_bottom_bg.jpg" height="39" align="center" valign="middle">
							<?php
							$label = $rs['prod_name'];
							if(strlen($label) > 50)
							{
								$labelClassName = 'product_label_smallest';
								$label = substr($label, 0, 25)."<br>".substr($label, 25, 25)."<br>".substr($label, 50);
							}
							else if(strlen($label) > 40)
							{
								$labelClassName = 'product_label_extra_small';
								$label = substr($label, 0, 25)."<br>".substr($label, 25);
							}
							else if(strlen($label) > 20)
							{
								$labelClassName = 'product_label_small';
								$label = substr($label, 0, 20)."<br>".substr($label, 20);
							}
							else
								$labelClassName = 'product_label';
								
							echo "<div class='$labelClassName'><a href='index.php?detail=products&itemid=".$rs['id']."'>$label</a></div>";
							?>
						</td>
					</tr>
					<tr>
						<td colspan="3" height="5"></td>
					</tr>
					<tr>
						<td colspan="3" align="center">
							<div id="cartitem_<?php echo $rs['id'];?>"><input type="text" class="text" id="itemcount_<?php echo $rs['id'];?>" style="width:30px;" value="<?php echo $itemcount;?>"> Pcs &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:SetItem(<?php echo $rs['id'];?>)">Save</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="javascript:RemoveItem(<?php echo $rs['id'];?>)">Remove</a></div>
						</td>
					</tr>
				</table>
			</td>
		<?php
			if($icount == count($cart))
			{
				for($i=$jcount; $i<4; $i++)
					echo '<td><div style="width:168px"></div></td>';
				echo '</tr>';
			}
			elseif($icount%4 == 0)
				echo '</tr><td height="30" colspan="4"></td><tr>';
				
			}
		}
		?>
	</table>
	<?php 
	}
	else
	{
	?>
	<div style="padding-bottom:350px;padding-left:12px">Currently there is no item here to order.</div>
	<?php }?>
	</div>
</p>
<div id="sendemail" style="display:none">
	<br>
	<div class="heading" style="margin-left:10px;margin-bottom:10px;text-decoration:underline">Order by email:</div>
	<div style="margin-left:10px;margin-bottom:10px;font-weight:bold">Ordered item code: <?php echo $rs['c_id'];?></div>
	<table border="0" cellpadding="6" cellspacing="10">
		<form method="post" action="<?php echo $includepath;?>contact_mail.php">
		<tr>
			<td>Your Name:</td>
		    <td><input type="text" class="text" name="name" style="width:200px"></td>
		</tr>
		<tr>
		  <td>Your Email:</td>
		  <td><input type="text" class="text" name="email" style="width:200px"></td>
	  </tr>
		<tr>
		  <td valign="top">Comment:</td>
		  <td><textarea class="text" name="email" style="width:200px;height:70px"></textarea></td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td><input type="submit" class="button" name="frmSubmit" value="Order Now"></td>
	  </tr>
	  <input type="hidden" name="securekey" value="<?php echo sha1(date("j F, Y"));?>">
	  </form>
	</table>
</div>
<script language="javascript">
var bcount = 0;
	function blink_tag()
	{
		var tag = document.getElementById('joinus_tag');
		if(bcount == 0)
		{
			bcount = 1;
			/*tag.style.color = '#AED137';
			tag.style.borderTop = '2px solid #3b921d';
			tag.style.borderBottom = '2px solid #3b921d';*/
			tag.className = 'light_bg';
		}
		else
		{
			bcount = 0;
			/*tag.style.color = '#3b921d';
			tag.style.borderTop = '2px solid #AED137';
			tag.style.borderBottom = '2px solid #AED137';*/
			tag.className = '';
		}
		setTimeout('blink_tag()', 700);
	}
	blink_tag();
	
function SetItem(itemid)
{
	var itemcount = parseInt($("#itemcount_"+itemid).val());
	if(itemcount == 0 || !Number(itemcount))
	{
		var tempcontent = $("#cartitem_"+itemid).html();
		$("#cartitem_"+itemid).html('Add atleast 1 Pcs of the product.').addClass('light_bg').fadeTo(1000, 1, function(){setTimeout(function(){$("#cartitem_"+itemid).fadeTo(500, 0, function(){$("#cartitem_"+itemid).removeClass().html(tempcontent).fadeTo(1000,1)})})});
	}
	else
	{
		var newcontent = '<input type="text" class="text" id="itemcount_'+itemid+'" style="width:30px;" value="'+itemcount+'"> Pcs &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:SetItem('+itemid+')">Save</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="javascript:RemoveItem('+itemid+')">Remove</a>';
		$("#cartitem_"+itemid).addClass('light_bg').html('Saving data..');
		var data = $.ajax({
			url: "includes/cartcp.php?remote=ajax&action=additem&setcount=1&itemid="+itemid+"&itemcount="+itemcount,
			async: false
		}).responseText;
		if(data == 'saved')
		{
			$("#cartitem_"+itemid).fadeTo(500, 0, function(){$("#cartitem_"+itemid).html('Product data saved.').fadeTo(1000, 1, function(){setTimeout(function(){$("#cartitem_"+itemid).fadeTo(1000, 0, function(){$("#cartitem_"+itemid).removeClass().html(newcontent).fadeTo(1000,1)})},2000)})});
			//obj.value = 'Remove from cart';
		}
		else if(data = 'failed')
			$("#msgalert").fadeTo(500, 0, function(){$(this).text('You have to login first to use this feature').fadeTo(1000, 1)});;
	}
}

function RemoveItem(cartitem)
{
	var data = $.ajax({
		url: "includes/cartcp.php?remote=ajax&action=delitem&itemid="+cartitem,
		async: false
	}).responseText;
	if(data == 'deleted')
		location = 'index.php?detail=cart';
}

function OrderItem(cartitem)
{
	var data = $.ajax({
		url: "includes/order.php?item="+cartitem,
		async: false
	}).responseText;
	$("#sendemail").html(data);
}

function OrderAll()
{
	$("#cartcontent").fadeTo(300, 0, function(){
		$("#waiting").fadeTo(300, 1);
		var data = $.ajax({
			url: "includes/cartcp.php?remote=ajax&action=preorder",
			async: false
		}).responseText;
		$("#orderconfirm").show().css({opacity:0}).html(data).fadeTo(1000, 1);
		setTimeout(function(){
			$("#waiting").fadeTo(700, 0);
		}, 500);
	});
}

function CancelOrder()
{
	$("#orderconfirm").fadeTo(300, 0, function(){
		$("#orderconfirm").hide();
		$("#cartcontent").fadeTo(700, 1);
	});
}

function ConfirmOrder()
{
	$("#ordermsg").html("<span style='color:green;font-size:12px;'>Processing your order.......</span>");
	var data = $.ajax({
		url: "includes/order.php?action=process",
		async: false
	}).responseText;
	if(data == 'done')
	{
		$("#ordercontent").hide("blind", {direction:'vertical'}, 800, function(){
			$("#ordermsg").fadeOut(1000, function(){
				location="index.php?detail=cart&action=message";
			});
		});
	}
	else
	{
		$("#ordermsg").html("<span style='color:red;font-size:12px;'>An error has occured while ordering. Please try again.</span>");
	}
		
}

function getCartOpt(opt)
{
	switch(opt)
	{
		case 'order':
			OrderAll();
			break;
		
		case 'delall':
			if(confirm("Are you sure want to delete all of your cart items?"))
			{
				var data = $.ajax({
					url: "includes/cartcp.php?remote=ajax&action=delall",
					async: false
				}).responseText;
				if(data == 'deleted')
					location = 'index.php?detail=cart';
			}
			break;
		
	}
	
	document.getElementById('cartopt').options[0].selected = true;
}
</script>