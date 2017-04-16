<?php
require_once("antihack.php");

if(empty($_SESSION['uid']) || empty($_SESSION['uname']) || empty($_SESSION['ugroup']))
{
?>
						<table cellspacing="0" cellpadding="0" border="0" width="100%" height="70" bgcolor="#FFFFFF">
							<tr>
								<td colspan="3" background="images/box_top_bg.jpg" height="17"></td>
							</tr>
							<tr>
								<td style="width:7px;" background="images/box_bg_left.jpg"></td>
								<td align="center" valign="middle">
								<br>
								<span style="font-family:Georgia, 'Times New Roman', Times, serif;font-size:20px;color:#3b921d;font-weight:bold;padding:7px 12px 7px 12px;" id="joinus_tag">Join Us</span><br><br>
								for Registration<br>
								<a href="index.php?detail=register"><input type="image" src="<?php echo $imagepath;?>click.jpg" class="click_button" onClick="location='index.php?detail=register'"></a>
								</td>
								<td style="width:7px;" background="images/box_bg_right.jpg"></td>
							</tr>
							<tr>
								<td colspan="3" background="images/box_bottom_bg.jpg" height="17"></td>
							</tr>
						</table>
						<script type="text/javascript">
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
						</script>
<?php }?>
						<table cellspacing="0" cellpadding="0" border="0" width="100%" height="70" bgcolor="#FFFFFF">
							<tr>
								<td colspan="3" background="images/box_top_bg.jpg" height="17"></td>
							</tr>
							<tr>
								<td style="width:7px;" background="images/box_bg_left.jpg"></td>
								<td align="center" valign="middle">
								<div class="heading">Upload Your Product</div>
								<input type="image" src="<?php echo $imagepath;?>click.jpg" class="click_button" onClick="location='index.php?detail=manage_products'">								
								</td>
								<td style="width:7px;" background="images/box_bg_right.jpg"></td>
							</tr>
							<tr>
								<td colspan="3" background="images/box_bottom_bg.jpg" height="17"></td>
							</tr>
						</table>
						<table cellspacing="0" cellpadding="0" border="0" width="100%" height="70" bgcolor="#FFFFFF">
							<tr>
								<td colspan="3" background="images/box_top_bg.jpg" height="17"></td>
							</tr>
							<tr>
								<td style="width:7px;" background="images/box_bg_left.jpg"></td>
								<td align="center" valign="middle">
								<div class="heading">To know how to upload your product</div>								
								<input type="image" src="<?php echo $imagepath;?>click.jpg" class="click_button" onClick="location='index.php?detail=help&item=upload'">
								</td>
								<td style="width:7px;" background="images/box_bg_right.jpg"></td>
							</tr>
							<tr>
								<td colspan="3" background="images/box_bottom_bg.jpg" height="17"></td>
							</tr>
						</table>

						<table cellspacing="0" cellpadding="0" border="0" width="100%" height="120" bgcolor="#FFFFFF">
							<tr>
								<td colspan="3" background="images/box_top_bg.jpg" height="17"></td>
							</tr>
							<tr>
								<td style="width:7px;" background="images/box_bg_left.jpg"></td>
							  <td align="center" valign="middle">
								<div class="heading">Promote your products and<br>services under Shikor brand.<br>
								<a href="#">Contact Us</a>
								</div>
                                <input name="image" type="image" class="click_button" src="<?php echo $imagepath;?>click.jpg" onClick="location='index.php?detail=manage_products&event=addproduct'">
								</td>
								<td style="width:7px;" background="images/box_bg_right.jpg"></td>
							</tr>
							<tr>
								<td colspan="3" background="images/box_bottom_bg.jpg" height="17"></td>
							</tr>
						</table>
