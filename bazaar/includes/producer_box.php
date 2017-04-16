<?php
require_once("antihack.php");
?>
						<table cellspacing="0" cellpadding="0" border="0" width="100%" bgcolor="#FFFFFF">
							<tr>
								<td colspan="3" background="images/user_top_bg.jpg" height="38"></td>
							</tr>
							<tr>
								<td style="width:7px;" background="images/box_bg_left.jpg"></td>
								<td style="height:50px;">
								<?php
								$qry = "SELECT * FROM ".$db_prefix."userinfo WHERE featured=1";
								$res = mysql_query($qry);
								if(mysql_num_rows($res) > 0)
								{
									$rs = mysql_fetch_assoc($res);
									echo '<div align="center" style="margin-top:20px">'.(file_exists($imguploadpath."users/thumb_".$rs['photo'])?"<a class='heading' href='index.php?detail=profile&profile_id=".$rs['id']."'><img src='".$imguploadpath."users/thumb_".$rs['photo']."'></a>":'')."<div align=center style='margin-top:5px'><a class='heading' href='index.php?detail=profile&profile_id=".$rs['id']."'>".$rs['uname']."</a></div></div>";
								}
								?>
								</td>
								<td style="width:7px;" background="images/box_bg_right.jpg"></td>
							</tr>
							<tr>
								<td colspan="3" background="images/box_bottom_bg.jpg" height="17"></td>
							</tr>
						</table>

						<table cellspacing="0" cellpadding="0" border="0" width="100%" bgcolor="#FFFFFF">
							<tr>
								<td colspan="3" background="images/ulist_top_bg.jpg" height="38"></td>
							</tr>
							<tr>
								<td style="width:7px;" background="images/box_bg_left.jpg"></td>
								<td style="height:200px;" valign="top">
								<marquee behavior="scroll" direction="up" scrollamount="3" scrolldelay="" height="160" onMouseMove="this.stop()" onMouseOut="this.start()">
								<?php
								$qry = "SELECT DISTINCT uid FROM ".$db_prefix."prods WHERE uid<>99999 AND allowed=1 ORDER BY RAND() LIMIT 10";
								$res = mysql_query($qry);
								if(mysql_num_rows($res) > 0)
								{
									echo "<ul style='list-style-type:none'>";
									while($rs = mysql_fetch_assoc($res))
									{
										$qry2 = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs['uid'];
										$res2 = mysql_query($qry2);
										$rs2 = mysql_fetch_assoc($res2);
										echo "<li><a href='index.php?detail=profile&profile_id=".$rs2['id']."'>".$rs2['uname']."</li>";
									}
									echo "</ul>";
								}
								?>
								</marquee><br><br>
								<div align="right" style="margin-right:20px;"><a href="index.php?detail=profile&view=list">List all producers</a></div>
								</td>
								<td style="width:7px;" background="images/box_bg_right.jpg"></td>
							</tr>
							<tr>
								<td colspan="3" background="images/box_bottom_bg.jpg" height="17"></td>
							</tr>
						</table>
