<?php
session_start();
require_once("antihack.php");
require_once($usersecuritycheck);

if(empty($_GET['loader'])){
?>
<script type="text/javascript" src="<?php echo $scriptpath;?>cookie.js"></script>
<script type="text/javascript" src="<?php echo $scriptpath;?>cart.js"></script>
<p>
	<div style="float:right">
		<select id="lightboxopt" onChange="getLightboxOpt(this.value)">
			<option value="" style="font-weight:bold;background-color:#999999;color:#ffffff;">Favorites options</option>
			<option value="addall">Add all to cart</option>
			<option value="delall">Remove all</option>
		</select>
	</div>
	<br><br><br>
	<div id="subcontentloader" align="left">
	<?php
}

	$qry = "SELECT * FROM ".$db_prefix."lightbox WHERE uid=".$_SESSION['uid'];
	$res = mysql_query($qry);
	$rs = mysql_fetch_assoc($res);
	$mylightboxarray = $rs['items'];
	if(trim(str_replace(",","",$mylightboxarray)) != '')
		$mylightbox = explode(",", $mylightboxarray);
		
	if(count($mylightbox) > 0)
	{
	?>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
	<?php
	$icount = 0;
	$jcount = 0;
	foreach($mylightbox as $item)
	{
		$qry = "SELECT * FROM ".$db_prefix."prods WHERE id=".$item;
		$res = mysql_query($qry);
		if(mysql_num_rows($res) > 0)
		{
		$rs = mysql_fetch_assoc($res);
				$icount++;
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
							<a href="index.php?detail=products&itemid=<?php echo $rs['id'];?>"><img src="<?php if(file_exists($imgupthumbpath.$rs['prod_image'])){echo $imgupthumbpath.$rs['prod_image'];}else{echo $imagepath."nopicture.gif";}?>"></a>
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
				</table>
				<?php
				$cart  = Array();
				$cartarray = $_SESSION['SHC_Cookie'];
				if(trim(str_replace(",","",$cartarray)) != '')
					$cart = explode(",", $cartarray);
				if(in_array($rs['id'], $cart))
					$cartlink = '<a href="javascript:RemoveCartItem('.$rs['id'].')">Remove from cart</a>';
				else
					$cartlink = '<a href="javascript:AddCartItem('.$rs['id'].')">Add to cart</a>';
				?>
				<div align="center" style="margin-top:5px;"><span id="cartlink_<?php echo $rs['id'];?>"><?php echo $cartlink;?></span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="javascript:RemoveItem(<?php echo $rs['id'];?>)">Remove</a></div>
			</td>
		<?php
			if($icount == count($mylightbox))
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
		<?php }else{?>
	<div style="padding-bottom:350px;padding-left:12px">There is no item in your favorites.</div>
	<?php }
	
if(empty($_GET['loader'])){
?>
</div>
</p>
<script language="javascript">
function RemoveItem(lbitem)
{
	var data = $.ajax({
		url: "includes/lightboxcp.php?remote=ajax&action=delitem&itemid="+lbitem,
		async: false
	}).responseText;
	if(data == 'deleted')
		location = 'index.php?detail=lightbox';
}

function AddCartItem(lbitem)
{
	var data = $.ajax({
		url: "includes/cartcp.php?remote=ajax&action=additem&itemcount=1&itemid="+lbitem,
		async: false
	}).responseText;
	if(data == 'saved')
		$("#cartlink_"+lbitem).html('<a href="javascript:RemoveCartItem('+lbitem+')">Remove from cart</a>')
}

function RemoveCartItem(lbitem)
{
	var data = $.ajax({
		url: "includes/cartcp.php?remote=ajax&action=delitem&itemid="+lbitem,
		async: false
	}).responseText;
	if(data == 'deleted')
		$("#cartlink_"+lbitem).html('<a href="javascript:AddCartItem('+lbitem+')">Add to cart</a>')
}

var delall = 0;
var saved = 0;

function getLightboxOpt(opt)
{
	switch(opt)
	{
		case 'addall':
			var chkarr = document.getElementsByTagName("input");
			for(var i=0; i<chkarr.length; i++)
			{
				if(chkarr[i].type == 'checkbox')
					chkarr[i].checked = true;
			}
			break;
		
		case 'delall':
			if(confirm("Are you sure want to delete all of your favorite items?"))
			{
				var data = $.ajax({
					url: "includes/lightboxcp.php?remote=ajax&action=delall",
					async: false
				}).responseText;
				if(data == 'deleted')
					location = 'index.php?detail=lightbox';
			}
			break;
		
	}
	
	document.getElementById('lightboxopt').options[0].selected = true;
}
</script>
<?php }?>