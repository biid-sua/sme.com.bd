<?php
require_once("antihack.php");
require_once($mainconn);

$qry = "SELECT * FROM ".$db_prefix."prods WHERE allowed=1 ORDER BY RAND() LIMIT 1";
$res = mysql_query($qry);
if(mysql_num_rows($res) > 0)
{
	$rs = mysql_fetch_assoc($res);
?>
						<table cellspacing="0" cellpadding="0" border="0" width="100%" bgcolor="#FFFFFF">
							<tr>
								<td colspan="3" background="images/pod_top_bg.jpg" height="38"></td>
							</tr>
							<tr>
								<td style="width:7px;" background="images/box_bg_left.jpg"></td>
								<td align="center" valign="middle">
									<table cellspacing="0" cellpadding="0" border="0" width="115" height="134" bgcolor="#FFFFFF" style="margin-top:10px;">
										<tr>
											<td colspan="3" background="images/prod_small_top_bg.jpg" height="14"></td>
										</tr>
										<tr>
											<td style="width:6px;" background="images/prod_small_left_bg.jpg"></td>
											<td height="95" width="103" align="center" valign="middle">
												<a href='index.php?detail=products&itemid=<?php echo $rs['id'];?>'><img src="<?php if(file_exists($imgupthumbpath.$rs['prod_image'])){echo $imgupthumbpath.$rs['prod_image'];}else{echo $imagepath."nopicture.gif";}?>" width="85"></a>
											</td>
											<td style="width:6px;" background="images/prod_small_right_bg.jpg"></td>
										</tr>
										<tr>
											<td colspan="3" background="images/prod_small_bottom_bg.jpg" height="25" align="center" valign="middle">
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
												else
												{
													$labelClassName = 'product_label_extra_small';
													$label = substr($label, 0, 20)."<br>".substr($label, 20);
												}
													
												echo "<div><a class='$labelClassName' href='index.php?detail=products&itemid=$rs[id]'>$label</a></div>";
												?>
											</td>
										</tr>
									</table>
								</td>
								<td style="width:7px;" background="images/box_bg_right.jpg"></td>
							</tr>
							<tr>
								<td colspan="3" background="images/box_bottom_bg.jpg" height="17"></td>
							</tr>
						</table>
<?php
}
?>