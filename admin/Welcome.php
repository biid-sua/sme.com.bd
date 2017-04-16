<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administration Page.</title>
<link href="../css/mynul_bng.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="rte/editor.js" type="text/javascript"></script>
</head>

<body>
<table width="888" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border:#999999 1px solid">
  <tr>
    <td style="border-bottom:#999999 1px solid"><? require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td class="mainpadding"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="mainpadding"><h3>&#2476;&#2495;&#2486;&#2503;&#2487; &#2476;&#2495;&#2460;&#2509;&#2462;&#2474;&#2509;&#2468;&#2495; </h3>
            <p align="justify">Welcome to the admin panel of SME. Here you can Add/Edit/Delete/Modify/Upload/Download all type of files and information those are available in the USER site at present.</p>
          <p>Please follow the instruction on the pages and fill in the infoamtions accordingly.</p>
          <p align="justify">In case of IMAGES, please do not upload a very large image. Instade you can upload Midium images of resolution - 500x400 pixel. Use the Image button to add images. Before you can add an image to the infoamrtion page You must upload the image into the server. Please follow the online intructions of uploading Image in the server. Once you have added Picture in the server you can use it anywhere in the page. But if you want a custom view then you might need to modify the CODE a little bit. </p>
          <p align="justify">If you face any problem please feel free to contact the <a href="mailto:mynul@mynul.com">webmaster</a> for further details.</p>
          <p>Enjoy the ride of OPEN SOURCE!</p></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><? require_once('footer.php'); ?></td>
  </tr>
</table>
</body>
</html>
