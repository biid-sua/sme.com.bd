<?php
session_start();
if($_GET['remote'] == 'ajax')
{
	$sitebase="../";
	require_once($sitebase."admin/config.php");
	$imagepath = $siteurl."images/";
	$imguploadpath = $siteurl."photos/";
}
else
	require_once("antihack.php");
	
require_once($usersecuritycheck);
require_once($mainconn);

?>
<p>
	<div style="height:350px;padding:2px 0px 0px 20px">
	<div style="height:1px"></div>
	Welcome to <?php echo $sitename;?> user control panel.<br><br><br><br>
	<table border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td align="left" valign="top">
			<?php
			$qryimg = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$_SESSION['uid'];
			$rsimg = mysql_fetch_assoc(mysql_query($qryimg));
			if(file_exists($imguploadpath."users/thumb_".$rsimg['photo']))
				echo '<img src="'.$imguploadpath."users/thumb_".$rsimg['photo'].'" style="border:1px solid #aeaeae ">';
			?>
			</td>
			<td width="20"></td>
		  <td width="130" align="justify" valign="top">
				<img src="<?php echo $imagepath;?>arrow_right.gif">&nbsp;&nbsp;&nbsp;<a href="index.php?detail=lightbox" class="heading">My Favorites</a><br><br>
			  You can add and store your favorite products here to proceed with purchasing later.</td>
			<td width="20"></td>
		  <td width="130" align="justify" valign="top">
				<img src="<?php echo $imagepath;?>arrow_right.gif">&nbsp;&nbsp;&nbsp;<a class="heading" href="index.php?detail=user_profile">Edit Profile</a><br><br>
			  You can edit and change personal informations here which are visible to the other users.</td>
			<td width="20"></td>
		  <td width="130" align="justify" valign="top">
				<img src="<?php echo $imagepath;?>arrow_right.gif">&nbsp;&nbsp;&nbsp;<a class="heading" href="index.php?detail=manage_products">My Products</a><br><br>
			  You can add/edit/delete the personal products added by you in this site.</td>
			<td width="20"></td>
		  <td width="130" align="justify" valign="top">
				<img src="<?php echo $imagepath;?>arrow_right.gif">&nbsp;&nbsp;&nbsp;<a class="heading" href="logout.php">Sign Out</a><br><br>
			  Sign out from your account and return to <?php echo $sitename;?> home screen.</td>
		</tr>
	</table>
	</div>
</p>