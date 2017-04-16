<?php
require_once("antihack.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-gb" lang="en-gb" >
<head>
<base href="<?php echo $siteurl;?>" />
<title><?php echo $pagetitle;?></title>
<?php echo $pagemeta;?>
<link rel="stylesheet" type="text/css" href="<?php echo $stylemain?>">
<script language="javascript" type="text/javascript" src="<?php echo $scriptpath;?>jquery-1.3.2.min.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo $scriptpath;?>jquery-ui-1.7.1.custom.min.js"></script>
</head>

<body>
<div id="wrapper">
	<table width="1034" border="0" cellspacing="0" cellpadding="0" align="center">
	  <tr>
		<td width="15" background="images/b_left.jpg" align="center" valign="top"><img src="images/b_t_left.jpg"></td>
		<td height="800" align="center" valign="top">
			<?php
			require_once($bannerpage);
			?>
			<table cellspacing="3" cellpadding="0" border="0" width="100%">
				<tr height="">
					<td colspan="2" style="height:35px;">
						<table cellspacing="0" cellpadding="0" border="0" width="100%" bgcolor="#f3f3f5">
							<tr style="background-color:#f3f3f5">
								<td width="244" valign="middle">
								<?php
								require_once($includepath."search_box.php");
								?>
								</td>
								<td align="left" valign="middle">
								<?php
								require_once($includepath."pagetitles.php");
								?>
								</td>
								<td width="248" valign="middle">
								<?php
								require_once($includepath."login_box.php");
								?>
								</td>
							</tr>
					  </table>
					</td>
				</tr>
				<tr>
					<td width="242" valign="top" align="center">
						<?php
							require_once($sidebar);
						?>
					</td>
					<td height="648" width="750" align="left" valign="top">
						<?php 
						if(!empty($_GET['detail']) && file_exists($includepath.strtolower($_GET['detail']).".php"))
							require_once($includepath.strtolower($_GET['detail']).".php");
						else
							require_once($includepath."products.php");
						?>
					</td>
				</tr>
			</table>
			<?php
			require_once($includepath."footerpage.php");
			?>
		</td>
		<td width="15" background="images/b_right.jpg" align="center" valign="top"><img src="images/b_t_right.jpg"></td>
	  </tr>
	</table>
</div>
</body>
</html>