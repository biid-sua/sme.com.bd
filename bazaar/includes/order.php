<?php
$sitebase = "../";
require_once($sitebase."admin/config.php");
require_once($mainconn);
$imagepath = $siteurl."images/";
$newimgupthumbpath = $siteurl."photos/thumb/";

if($_GET['action'] == 'process')
{
	$mycart = Array();
	$mycartarray = $_SESSION['SHC_Cookie'];
	$ret = mysql_query("INSERT INTO ".$db_prefix."orders(uid, orders, odate) VALUES(".$_SESSION['uid'].", '".$mycartarray."', '".date("Y-m-d")."')");
	if($ret == false)
		die('failed');
	else
	{
		$order_id = mysql_insert_id();
		$qry = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$_SESSION['uid'];
		$res = mysql_query($qry);
		$rs = mysql_fetch_assoc($res);
		//Mailing user
		if(!empty($rs['email']))
		{
			$name = $rs['uname'];
			$email = $rs['email'];
			
			$to      = $email;
			$subject = "Confirmation of Products Ordered on $sitename";
			$headers = "From: \"$sitename Admin\" <$adminemail>" . "\r\n" .
			   "Reply-To: \"$name\" <$email>" . "\r\n" .
			   'X-Mailer: PHP/' . phpversion();
			
			$message = "You have ordered following products in $sitename :
-----------------------------------------------------------------------------------";
			
			foreach($mycart as $cartitem)
			{
				$properties = explode(":", $cartitem);
				$qry2 = "SELECT * FROM ".$db_prefix."prods WHERE id=".$properties[0];
				$res2 = mysql_query($qry2);
				$rs2 = mysql_fetch_assoc($res2);
				
				$message .= "Product Name: ".$rs2['prod_name']."\r\nQuantity: ".$properties[1]."\r\nPrice: ".(empty($rs2['price'])? 'N/A':$rs2['price'])."\r\nTotal Amount: ".(empty($rs2['price'])? 'N/A':intval($rs2['price'])*intval($properties[1]))."\r\n\n";
			}
			
			$message .= "\r\n\nPlease ignore this mail in case you have not registered an account on $sitename. If you have not ordered these products but keep recieving mail then please contact the $sitename administrator immediately.\r\n\nregards,\r\n$sitename Admin";
			
			@mail($to, $subject, $message, $headers);
		}
		
		//Mailing admin
		$name = $rs['fname']." ".$rs['lname'];
		$email = $rs['email'];
		
		$to      = $adminemail;
		$subject = "New Product Orders on $sitename";
		$headers = "From: \"$sitename Purchase Alert\" <noreply@".$_SERVER['HTTP_HOST'].">\r\n" .
		   "Reply-To: \"$sitename Admin\" <$adminemail>\r\n" .
		   'X-Mailer: PHP/' . phpversion();
		$message .= "A number of products have been ordered by $name on $sitename\r\n\nPlease check the following link to view the order details\r\n".$siteurl."admin/admincp.php?detail=manage_orders&event=vieworder&order_id=$order_id";
		@mail($to, $subject, $message, $headers);	
		$_SESSION['SHC_Cookie'] = "";
		die('done');
	}
}

if(!empty($_GET['item']))
{
	$qry = "SELECT * FROM ".$db_prefix."prods WHERE id=".$_GET['item'];
	$res = mysql_query($qry);
	$rs = mysql_fetch_assoc($res);
?>
<table border="0" cellspacing="15" width="400">
	<tr>
		<td valign="top">
			<table cellspacing="0" cellpadding="0" border="0" width="168" height="216" bgcolor="#FFFFFF">
				<tr>
					<td colspan="3" background="images/prod_top_bg.jpg" height="16"></td>
				</tr>
				<tr>
					<td style="width:7px;" background="images/prod_left_bg.jpg"></td>
					<td height="161" width="154" align="center" valign="middle">
						<a href="index.php?detail=products&itemid=<?php echo $rs['id'];?>" target='_blank'><img src="<?php if(file_exists($imgupthumbpath.$rs['prod_image'])){echo $newimgupthumbpath.$rs['prod_image'];}else{echo $imagepath."nopicture.gif";}?>"></a>
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
							
						echo "<div class='$labelClassName'><a href='index.php?detail=products&itemid=".$rs['id']."' target='_blank'>$label</a></div>";
						?>
					</td>
				</tr>
			</table>
		</td>
		<td valign="top">
			<b>Product Name</b>:<br>
			<?php echo $rs['prod_name']?><br><br>
			<b>Producer</b><br>
			<?php
			if($rs['uid'] == 99999)
				echo $sitename." Admin";
			else
			{
				$qryuser = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs['uid'];
				$resuser = mysql_query($qryuser);
				$rsuser = mysql_fetch_assoc($resuser);
				echo "<a class='heading' href='index.php?detail=profile&profile_id=".$rsuser['id']."' target='_blank'>".$rsuser['uname']."</a>";
			}
			?>
			<br><br>
			<b>Price</b>:<br>
			<?php echo empty($rs['price'])?'Please contact us for price':$rs['price'];?><br><br><br>
		</td>
	</tr>
</table>
<!-- br>
<div align="center"><input type="button" class="button" name="order" value="Order This Product Now" onClick="tb_remove()"></div -->
<?php
}
?>