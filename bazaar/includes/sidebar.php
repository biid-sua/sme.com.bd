<?php
require_once("antihack.php");
require_once($mainconn);
?>
						<table cellspacing="0" cellpadding="0" border="0" width="100%" bgcolor="#FFFFFF">
							<tr>
								<td colspan="3" background="images/cat_top_bg.jpg" height="53"></td>
							</tr>
							<tr>
								<td style="width:7px;" background="images/box_bg_left.jpg"></td>
								<td>
								<br><br>
								<div class="heading_big" style="margin-left:25px;#margin-left:-35px;">Itemwise Categories</div>
								<?php
								$qry = "SELECT * FROM ".$db_prefix."categories ORDER BY cat_order ASC";
								$res = mysql_query($qry);
								if(mysql_num_rows($res) > 0)
								{
									echo '<ul id="sidebar_menu">';
									while($rs = mysql_fetch_assoc($res))
									{
										echo '<li><a href="index.php?detail=products&viewcat='.$rs['id'].'">'.$rs['cat_title'].'</a></li>';
									}									
									echo '</ul>';
								}
								?>
								<br>
								<div class="heading_big" style="margin-left:25px;#margin:0">Locationwise Categories</div>
								<ul id="sidebar_menu">
									<li><a href="index.php?detail=products&location=Dhaka">Made in Dhaka</a></li>
									<li><a href="index.php?detail=products&location=CHT">Made in CHT</a></li>
									<li><a href="index.php?detail=products&location=Jessore">Made in Jessore</a></li>
									<li><a href="index.php?detail=products&location=Other">Other Locations</a></li>
								</ul>
								</td>
								<td style="width:7px;" background="images/box_bg_right.jpg"></td>
							</tr>
							<tr>
								<td colspan="3" background="images/box_bottom_bg.jpg" height="17"></td>
							</tr>
						</table>
<?php
	require_once($includepath."pod_box.php");
?>