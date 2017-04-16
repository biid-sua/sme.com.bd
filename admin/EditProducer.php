<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

//-----------------------Insert Online Market Information--------------------------------------	
if (isset($_POST['UpdateProducer']))
{
$Producer=$_POST[Producer];
$Story=$_POST[Story];
$Products=$_POST[Products];
$Location=$_POST[Location];
$PhoneMail=$_POST['PhoneMail'];
$Status=$_POST[Status];
$Date=date('Y-m-d');

	$result=mysql_query("SELECT * FROM producer WHERE Producer='$Producer' AND Story='$Story' AND Products='$Products' AND Location='$Location'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='AddProducer.php';</script>");	
		}
	else
	{
//-----------------Check Photo---------------------------------------
$TempPhoto= $_FILES[filename][tmp_name];
if (!empty($TempPhoto)) 
	{
		$result=mysql_query("SELECT * FROM producer WHERE ProducerId='$_POST[ProducerId]'");
		$row=mysql_fetch_array($result);
		$Photo=$row['Photo'];
//----------------- Delete Existing FILE ---------------------------------
		if (file_exists("../IGallery/$Photo"))
		unlink ("../IGallery/$Photo");
		
		if (file_exists("../Thumbnail/$Photo"))
		unlink ("../Thumbnail/$Photo");		
	//---------------------------------- Upload Photo -------------------------------------
$thumb="../Thumbnail";
$dest="../IGallery/";
$dest.= $_FILES[filename][name];
$FileName= $_FILES[filename][name];
$TempFile= $_FILES[filename][tmp_name];
$FileSize= round(($_FILES[filename][size])/1024,3);
$Photosize=getimagesize($_FILES[filename][tmp_name]);
$Photowidth=$Photosize[0];
$Photoheight=$Photosize[1];
$FileType= $_FILES[filename][type];

echo $FileName;  echo " :: "; echo $FileSize; echo 'KB'; echo " :: "; echo $FileType; //exit;

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
	if (file_exists("../IGallery/$FileName"))
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
	if (($FileType=="image/jpeg") OR ($FileType=="image/pjpeg"))
	$src_img=imagecreatefromjpeg("$dest");
	elseif ($FileType=="image/gif")
	$src_img=imagecreatefromgif("$dest");
	else
	$src_img=imagecreatefrompng("$dest");
	$imagedata=getimagesize("$dest");
	$thumb_w=100;
	$thumb_h=$Photoheight * ($thumb_w/$Photowidth);
	$dst_img=imagecreatetruecolor($thumb_w,$thumb_h);
	imagecopyresized($dst_img,$src_img,0,0,0,0,$thumb_w,$thumb_h,imagesx($src_img),imagesy($src_img));
	imagejpeg($dst_img,"$thumb/$FileName");	
	
//----------------- Insert into DB ------------------------------------------
	$result=mysql_query("UPDATE producer SET Producer='$Producer', Story='$Story', Products='$Products', Location='$Location', PhoneMail='$PhoneMail', Photo='$FileName', Status='$Status', Date='$Date' WHERE ProducerId='$_POST[ProducerId]'"); 
	echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
	echo ("<script>window.location='ViewProducer.php';</script>");	
	}
else { 	
$FileName=$_POST[PhotoName1];
		$result=mysql_query("UPDATE producer SET Producer='$Producer', Story='$Story', Products='$Products', Location='$Location', PhoneMail='$PhoneMail', Photo='$FileName', Status='$Status', Date='$Date' WHERE ProducerId='$_POST[ProducerId]'"); 
	echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
	echo ("<script>window.location='ViewProducer.php';</script>");	
	}			
}	
}	
//-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administration Page.</title>
<link href="../css/mynul_bng.css" rel="stylesheet" type="text/css" />
<script src="../Script/jvalid.js" type="text/javascript"></script>
</head>

<body>
<table width="888" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border:#999999 1px solid">
  <tr>
    <td style="border-bottom:#CCCCCC 1px solid; padding-bottom:5px"><? require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td valign="top" class="mainpadding"><table width="100%" border="0" cellspacing="1" cellpadding="2">
      <tr>
        <td width="25%" style="border-right:#CCCCCC 1px solid">&nbsp;</td>
        <td width="75%"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="mainpadding"><table width="100%" cellspacing="0" cellpadding="0">
                <tr>
                  <td><h3>উৎপাদনকারী পরিমার্জণ</h3></td>
                  <td><div align="right"><a href="ViewProducer.php" class="menu-link">উৎপাদনকারী</a></div></td>
                </tr>
                <tr>
                  <td colspan="2">&nbsp;</td>
                  </tr>
              </table></td>
          </tr>
          <tr>
            <td><form action="" method="post" enctype="multipart/form-data" name="form1" id="form2" onsubmit="return validemail()">
              <table width="100%" border="0" cellspacing="1" cellpadding="2">
              	<?php 
					$sqlProducer=mysql_query("SELECT * FROM producer WHERE ProducerId='$_GET[ProducerId]'");
					$dtProducer=mysql_fetch_array($sqlProducer);
					$Status=$dtProducer['Status'];
				?>
                <tr>
                  <td width="29%"><div align="right"> Producer
                    Name</div></td>
                  <td width="2%"><div align="center">:</div></td>
                  <td width="69%"><input name="Producer" type="text" class="text" id="Producer" value="<?=$dtProducer['Producer'];?>" size="48" />
                    *</td>
                </tr>
                <tr>
                  <td><div align="right"> Story</div></td>
                  <td><div align="center">:</div></td>
                  <td><textarea name="Story" cols="45" rows="5" class="text" id="Story"><?=$dtProducer['Story'];?>
                  </textarea>
                    *</td>
                </tr>
                <tr>
                  <td><div align="right">Products </div>
                      <div align="right"></div></td>
                  <td><div align="center">:</div></td>
                  <td><textarea name="Products" cols="45" rows="3" class="text" id="Products"><?=$dtProducer['Products'];?>
                  </textarea>
                    *</td>
                </tr>
                <tr>
                  <td><div align="right">Producer Picture </div>
                      <div align="right"></div></td>
                  <td><div align="center">:</div></td>
                  <td><?=$dtProducer['Photo'];?><br />
                  <input name="filename" type="file" id="filename" size="34" /></td></tr>
                <tr>
                  <td><div align="right">Availablity Location</div></td>
                  <td><div align="center">:</div></td>
                  <td><input name="Location" type="text" class="text" id="Location" value="<?=$dtProducer['Producer'];?>" size="48" />
                    *</td>
                </tr>
                <tr>
                  <td><div align="right">Phone/Email</div></td>
                  <td><div align="center">:</div></td>
                  <td><input name="PhoneMail" type="text" id="PhoneMail" value="<?=$dtProducer['PhoneMail'];?>" size="48" />
                    *</td>
                </tr>
                <tr>
                  <td><div align="right">Status</div></td>
                  <td><div align="center">:</div></td>
                  <td><select name="Status" class="bansml" id="Status">
                      <option value="" selected="selected"> Select One </option>
                      <option value="1" <?php if($Status == 1) echo "SELECTED";?>>Unpublished</option>
                      <option value="2" <?php if($Status == 2) echo "SELECTED";?>>Published</option>
                      <option value="3" <?php if($Status == 3) echo "SELECTED";?>>Exclusive</option>
                  </select></td>
                </tr>
                <tr>
                  <td><div align="right"></div></td>
                  <td><div align="center"></div></td>
                  <td><input name="UpdateProducer" type="submit" id="UpdateProducer" onclick="return Empty_field('Producer,Story,Products,Location,PhoneMail','EditProducer.php')" value="Edit Producer" />
                    <input name="ProducerId" type="hidden" id="ProducerId" value="<?=$dtProducer[ProducerId];?>" />
                    <input name="PhotoName1" type="hidden" id="PhotoName1" value="<?=$dtProducer['Photo'];?>" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td class="copyright">* Marked fields are must!</td>
                </tr>
              </table>
            </form></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><? require_once('footer.php'); ?></td>
  </tr>
</table>
</body>
</html>
