<?php
	session_start();
	
	if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:OnlineMarket.php");
	} 

	include("dbconnect.php");
	echo $_SESSION['LoginUserId'];
//-----------------------Insert Online Market Information--------------------------------------	
if (isset($_POST[AddProduct]))
{
$Product=$_POST[Product];
$Details=$_POST[Details];
$Producer=$_SESSION['LoginUserId'];
$Cost=$_POST[Cost];
$Location=$_POST[Location];
$Status=$_POST[Status];
$Date=date('Y-m-d');

	$result=mysql_query("SELECT * FROM omp WHERE Product='$Product' AND Details='$Details' AND Producer='$Producer' AND Cost='$Cost' AND Location='$Location'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='AddProduct.php';</script>");	
		}
	else
	{
	//---------------------------------- Upload Photo -------------------------------------
$thumb="Thumbnail";
$dest="IGallery/";
$dest.= $_FILES[filename][name];
$FileName= $_FILES[filename][name];
$TempFile= $_FILES[filename][tmp_name];
$FileSize= round(($_FILES[filename][size])/1024,3);
$Photosize=getimagesize($_FILES[filename][tmp_name]);
$Photowidth=$Photosize[0];
$Photoheight=$Photosize[1];
$FileType= $_FILES[filename][type];

echo $FileName;  echo " :: "; echo $FileSize; echo 'KB'; echo " :: "; echo $FileType; 

//------------------ Check the FILE SIZE ------------------------------------
	if ($FileSize > (900000/1024)) {
		die ("<div align=\"center\"><font  size=1 face=\"arial\">Your File is TOO Large! 
		<br>Please Choice a small file!</font>
		<form>
		<input type='button' value='Go Back'
		onClick='self.history.back();'>
		</form></div>");
		exit;
	}
//------------------ Check FILE TYPE ---------------------------------------
	if (($FileType!= "image/jpeg") && ($FileType!= "image/pjpeg") && ($FileType!= "image/jpg") && ($FileType!= "image/gif"))
	{
		die ("<div align=\"center\"><font  size=1 face=\"arial\">Your File is in an incorrect format! 
		<br>Only JPG, GIF and bmp file formats are allowed</font>
		<form>
		<input type='button' value='Go Back'
		onClick='self.history.back();'>
		</form></div>");
		exit;
	}	
//------------------ Check FILE EXISTS or NOT ------------------------------
	if (file_exists("IGallery/$FileName"))
	{
		die ("<div align=\"center\"><font  size=1 face=\"arial\">Your File Already Exist! 
		<br>Please Choice Another File or a Different File Name.</font>
		<form>
		<input type='button' value='Go Back'
		onClick='self.history.back();'>
		</form></div>");
		exit;
	}	
//----------------- All OK, Then UPLOAD FILE --------------------------------

	move_uploaded_file($TempFile,$dest);
	
//----------------- Create Thumbnail Image ----------------------------------

	$src_img=imagecreatefromjpeg("$dest");
	$imagedata=getimagesize("$dest");
	$thumb_w=100;
	$thumb_h=$Photoheight * ($thumb_w/$Photowidth);
	$dst_img=imagecreatetruecolor($thumb_w,$thumb_h);
	imagecopyresized($dst_img,$src_img,0,0,0,0,$thumb_w,$thumb_h,imagesx($src_img),imagesy($src_img));
	imagejpeg($dst_img,"$thumb/$FileName");	
	
//----------------- Insert into DB ------------------------------------------
	
	$result=mysql_query("INSERT INTO omp (Product, Details, Producer, ProducerId, Cost, Location, Photo, Date) VALUES ('$Product', '$Details', '$Producer','$ProducerId', '$Cost', '$Location', '$FileName', '$Date')"); 
	echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
	echo ("<script>window.location='AddProduct.php';</script>");	
	}
}	
//-------------------------End--------------------------
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:: Welcome to SME.COM.BD :.</title>
<link href="css/mynul_bng.css" type="text/css" rel="stylesheet" />
<script src="Script/jvalid.js" type="text/javascript"></script>
</head>
<body>
<table width="1013" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td><?php include('Head_Online.php'); ?></td>
  </tr>
  <tr>
    <td><table width="100%" cellspacing="0" cellpadding="0">
      <tr>
        <td width="228" valign="top"><? include('LeftMenu_OnlineMarket.php'); ?></td>
        <td valign="top"><form action="" method="post" enctype="multipart/form-data" name="form1" id="form1" onsubmit="return validemail()">
          <table width="100%" border="0" cellspacing="5" cellpadding="2">
            <tr>
              <td colspan="3"><img src="images/sme_inner_10-1.jpg" width="574" height="36" /></td>
              </tr>
            <tr>
              <td width="25%"><div align="right"> পণ্যের নাম</div></td>
              <td width="3%"><div align="center">:</div></td>
              <td width="72%"><input name="Product" type="text" class="text" id="Product" size="48" />
                *</td>
            </tr>
            <tr>
              <td><div align="right"> বর্ণনা</div></td>
              <td><div align="center">:</div></td>
              <td><textarea name="Details" cols="45" rows="5" class="text" id="Details"></textarea>
                *</td>
            </tr>

            <tr>
              <td><div align="right">পণ্য মূল্য</div></td>
              <td><div align="center">:</div></td>
              <td><input name="Cost" type="text" class="text" id="Cost" size="48" /></td>
            </tr>
            <tr>
              <td><div align="right">পণ্যের চিত্র </div>
                  <div align="right"></div></td>
              <td><div align="center">:</div></td>
              <td><input name="filename" type="file" id="filename" size="34" /></td>
            </tr>
            <tr>
              <td><div align="right">যেসব জায়গায় পাওয়া যায</div></td>
              <td><div align="center">:</div></td>
              <td><input name="Location" type="text" class="text" id="Location" size="48" />
                *</td>
            </tr>

            <tr>
              <td><div align="right"></div></td>
              <td><div align="center"></div></td>
              <td><input name="AddProduct" type="submit" class="button" id="AddProduct" onclick="return Empty_field('Product,Details,Producer,Location','AddOnlineProduct.php')" value="পণ্য যোগ করুণ" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td class="copyright"><span class="redHead">* চিহ্নিত অবশ্যাই পূরণ করতে হবে।</span></td>
            </tr>
          </table>
        </form></td>
        <td width="215" valign="top"><?php include('RightMenu_OnlineMarket.php'); ?></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><?php include('footer.php'); ?></td>
  </tr>
</table>

</body>
</html>
