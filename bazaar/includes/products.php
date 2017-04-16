<?php
session_start();

require_once("antihack.php");
require_once($mainconn);

if(empty($_GET['itemid']))
{
	if($_GET['location'] == '')
		$qry = "SELECT * FROM ".$db_prefix."prods WHERE allowed=1".(!empty($_GET['viewcat'])?" AND prod_cat=".$_GET['viewcat']:"")." ORDER BY prod_order DESC";
	elseif($_GET['location'] == 'Dhaka')
		$qry = "SELECT DISTINCT p.* FROM ".$db_prefix."prods as p, ".$db_prefix."userinfo as u WHERE (p.uid=u.id AND p.allowed=1 AND u.location='Dhaka') OR (p.uid=99999 AND p.allowed=1) ORDER BY prod_order DESC";
	else
		$qry = "SELECT p.* FROM ".$db_prefix."prods as p, ".$db_prefix."userinfo as u WHERE p.uid=u.id AND p.allowed=1 AND u.location='".$_GET['location']."' ORDER BY prod_order DESC";

	$count = 12;
	if(empty($_GET['page']))
		$page = 0;
	else
		$page = (intval($_GET['page'])-1);
	$limit = " LIMIT ".($page*$count).",".$count;
	$res = mysql_query($qry.$limit);
	if(mysql_num_rows($res) > 0)
	{
		$icount = 0;
?>
						<table cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<?php
								while($rs = mysql_fetch_assoc($res))
								{
								?>
								<td>
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
													
												echo "<div><a class='$labelClassName' href='index.php?detail=products&itemid=".$rs['id']."'>$label</a></div>";
												?>
											</td>
										</tr>
									</table>
								</td>
								<?php
									$icount++;
									if($icount == 3)
									{
										echo "</tr><tr>";
										$icount = 0;
									}
								}
								?>
						</table>
						<div style="width:90%;height:8px;border-bottom:1px solid #e3e3e3"></div>
<?php
		require_once($includepath."ps_pagination.php");
		$pager = new PS_Pagination($dblink, $qry, 12, 5, 'detail='.$_GET['detail'].'&viewcat='.$_GET['viewcat'].'&location='.$_GET['location']);
		//$pager->setDebug(true);
		$rspage = $pager->paginate();
		/*while($row = mysql_fetch_assoc($rspage)) {
			echo $row['title'];
		}*/
		echo $pager->renderFullNav();
	}
	else
		echo "<div style='margin-top:100px'>Cannot find any product under the defined criteria.</div>";
}
else
{
	$qry = "SELECT * FROM ".$db_prefix."prods WHERE id=".$_GET['itemid'];
	$res = mysql_query($qry);
	if(mysql_num_rows($res) > 0)
	{
		$rs = mysql_fetch_assoc($res);
?>
<div style="width:100%;height:100%;background-color:#f3f3f5">
<table border="0" width="100%">
	<tr>
		<td valign="top">
			<div style="padding:15px;padding-right:0;">
			<b>Product Name</b>: <?php echo $rs['prod_name']?><br><br>
			<b>Producer</b>:
			<?php
			if($rs['uid'] == 99999 || empty($rs['uid']))
				echo $sitename." Admin";
			else
			{
				$qryuser = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs['uid'];
				$resuser = mysql_query($qryuser);
				if(mysql_num_rows($resuser) > 0)
				{
					$rsuser = mysql_fetch_assoc($resuser);
					echo "<a class='heading' href='index.php?detail=profile&profile_id=".$rsuser['id']."'>".$rsuser['uname']."</a>";
				}
				else
					echo $sitename." Admin";
			}
			?>
			<br><br>
			<b>Description</b>:<br>
			<?php echo $rs['prod_desc']?><br><br>
			<b>Keywords</b>:<br>
			<?php 
			$qry2 = "SELECT * FROM ".$db_prefix."prods_keyword WHERE pid=".$_GET['itemid']." ORDER BY keyword ASC";
			$res2 = mysql_query($qry2);
			while($rs2= mysql_fetch_assoc($res2))
			{
				$tags .= ", ".$rs2['keyword'];
			}
			echo substr($tags, 2);
			?>
			<br><br>
			<b>Price</b>: <?php echo empty($rs['price'])?'Please contact us for price':$rs['price'];?><br><br><br>
			<?php
			if(!empty($_SESSION['uid']) && !empty($_SESSION['uname']) && !empty($_SESSION['ugroup']) && $_SESSION['ugroup'] == 2)
			{
				$qry2 = "SELECT * FROM ".$db_prefix."lightbox WHERE uid=".$_SESSION['uid'];
				$res2 = mysql_query($qry2);
				$rs2 = mysql_fetch_assoc($res2);
				$favitems = $rs2['items'];
				$favorites = explode(",",$favitems);
				if(in_array($rs['id'], $favorites))
					$favlabel = "Remove from favorite";
				else
					$favlabel = "Add to favorite";
			}
			else
				$favlabel = "Add to favorite";
			?>
			Order&nbsp;
			<input type="text" class="text" id="itemcount" style="width:30px;" value="1">&nbsp;Pcs<br><br>
			<input type="button" class="button" value="Add to cart" onClick="toggleCart(this, <?php echo $_GET['itemid'];?>)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="button" value="<?php echo $favlabel;?>" onClick="toggleFavorite(this, <?php echo $_GET['itemid'];?>)"><br><br>
			<div id="msgalert" style="float:left;padding:3px 6px 3px 6px;"></div>
			</div>
		</td>
		<td align="right" width="430">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="429" height="517" align="center" valign="middle" background="<?php echo $imagepath;?>prod_big_bg.jpg">
						<table border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="7"></td>
								<td align="center" valign="middle">
									<?php
									if(file_exists($imguploadpath.$rs['prod_image'])){
										list($width, $height) = getimagesize($imguploadpath.$rs['prod_image']);
										if($width == $height)
											if($width > 340)
												$imgdim = "width='340'";
										if($width > $height)
											if($width > 340)
												$imgdim = "width='340'";
										else if($height > $width)
											if($height > 440)
												$imgdim = "height='440'";
									}
									?>
									<img src="<?php echo $imguploadpath.$rs['prod_image'];?>" <?php echo $imgdim;?> alt="<?php echo $rs['prod_name']?>">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<script type="text/javascript">
function toggleFavorite(obj, itemid)
{
	if(obj.value == 'Add to favorite')
	{
		$("#msgalert").css({opacity:1}).addClass('light_bg').text('Please wait...');
		var data = $.ajax({
			url: "includes/lightboxcp.php?remote=ajax&action=additem&itemid="+itemid,
			async: false
		}).responseText;
		if(data == 'saved')
		{
			$("#msgalert").fadeTo(500, 0, function(){$(this).text('Item is added to your favorite sucessfully.').fadeTo(1000, 1, function(){setTimeout(function(){$("#msgalert").fadeTo(1000, 0)},2000)})});
			obj.value = 'Remove from favorite';
		}
		else if(data == 'exist')
			$("#msgalert").fadeTo(500, 0, function(){$(this).text('Item is already added to your favorite.').fadeTo(1000, 1, function(){setTimeout(function(){$("#msgalert").fadeTo(1000, 0)},2000)})});
		else if(data = 'failed')
			$("#msgalert").fadeTo(500, 0, function(){$(this).text('You have to login first to use this feature').fadeTo(1000, 1)});;
	}
	else if(obj.value == 'Remove from favorite')
	{
		$("#msgalert").css({opacity:1}).addClass('light_bg').text('Please wait...');
		var data = $.ajax({
			url: "includes/lightboxcp.php?remote=ajax&action=delitem&itemid="+itemid,
			async: false
		}).responseText;
		if(data == 'deleted')
		{
			$("#msgalert").fadeTo(500, 0, function(){$(this).text('Item is removed from your favorite sucessfully.').fadeTo(1000, 1, function(){setTimeout(function(){$("#msgalert").fadeTo(1000, 0)},2000)})});
			obj.value = 'Add to favorite';
		}
	}
}

function toggleCart(obj, itemid)
{
	//if(obj.value == 'Add to cart')
	//{
		var itemcount = parseInt($("#itemcount").val());
		if(itemcount == 0)
		{
			$("#msgalert").text('Please add atleast 1 Pcs of the product.').addClass('light_bg').fadeTo(1000, 1, function(){setTimeout(function(){$("#msgalert").fadeTo(1000, 0)},2000)});
			return false;
		}
		$("#msgalert").css({opacity:1}).addClass('light_bg').text('Please wait...');
		var data = $.ajax({
			url: "includes/cartcp.php?remote=ajax&action=additem&itemid="+itemid+"&itemcount="+itemcount,
			async: false
		}).responseText;
		if(data == 'saved')
		{
			$("#msgalert").fadeTo(500, 0, function(){$(this).text('Item is added to your cart sucessfully.').fadeTo(1000, 1, function(){setTimeout(function(){$("#msgalert").fadeTo(1000, 0)},2000)})});
			//obj.value = 'Remove from cart';
		}
		else if(data == 'exist')
			$("#msgalert").fadeTo(500, 0, function(){$(this).text('Item is already added to your cart.').fadeTo(1000, 1, function(){setTimeout(function(){$("#msgalert").fadeTo(1000, 0)},2000)})});
		else if(data = 'failed')
			$("#msgalert").fadeTo(500, 0, function(){$(this).text('You have to login first to use this feature').fadeTo(1000, 1)});;
	/*}
	else if(obj.value == 'Remove from cart')
	{
		$("#msgalert").css({opacity:1}).addClass('light_bg').text('Please wait...');
		var data = $.ajax({
			url: "includes/cartcp.php?remote=ajax&action=delitem&itemid="+itemid,
			async: false
		}).responseText;
		if(data == 'deleted')
		{
			$("#msgalert").fadeTo(500, 0, function(){$(this).text('Item is removed from your cart sucessfully.').fadeTo(1000, 1, function(){setTimeout(function(){$("#msgalert").fadeTo(1000, 0)},2000)})});
			obj.value = 'Add to cart';
		}
	}*/
}

$(document).ready(function(){
	$("#itemcount").focus();
});
</script>
</div>
<?php
	}
	else
		echo "<div style='margin-top:50px' class='heading' align=center>Cannot find the specified item. Try reloading the page<br> again or click <a href='javascript:history.go(-1)' style='text-decoration:underline'>here</a> to go back to the previous page.</div>";
}
?>