<?php
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:../index.php");
	} 
include_once('../dbconnect.php');

//-------------------------Form postings ------------------------------

$WebLink=$_POST[WebLink];
$Status=$_POST[Status];
$Date=date('F Y');

//echo $PhotoCaption; echo $VerticalPic; echo 'igal_'.$_FILES[filename][name];

if ($_POST[Submit]=="Add Advertise Now!")
{
//----------------------------- Upload Photo -------------------------------------
$dest="../Adv/";
$dest.= $_FILES[photoname][name];
$PhotoName= $_FILES[photoname][name];
$TempPhoto= $_FILES[photoname][tmp_name];
$PhotoSize= round(($_FILES[photoname][size])/1024,3);
$PhotoType= $_FILES[photoname][type];

echo $PhotoName;  echo " :: "; echo $PhotoSize; echo 'KB'; echo " :: "; echo $PhotoType; //exit;

//------------------ Check the FILE SIZE ------------------------------------
	if ($PhotoSize > 30000) {
		die ("<div align=\"center\"><font  size=1 face=\"arial\">Your File is TOO Large! 
		<br>Please Choice a small file!</font>
		<form>
		<input type='button' value='Go Back'
		onClick='self.history.back();'>
		</form></div>");
		exit;
	}
//------------------ Check FILE TYPE ---------------------------------------
	if (($PhotoType!= "image/jpeg") && ($PhotoType!= "image/pjpeg") && ($PhotoType!= "image/bmp") && ($PhotoType!= "image/gif"))
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
	if (file_exists("../Adv/$PhotoName"))
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
	move_uploaded_file($TempPhoto,$dest);

//----------------- Insert into DB ------------------------------------------

			$query = "INSERT INTO advertise (Photo, WebLink, Status, Date) VALUES 
			('$PhotoName', '$WebLink', '$Status', '$Date')";
			mysql_query ($query) or die (mysql_error());
			
//-------------------------------------------------------------------------------------------------------------------------------

			echo ("<script>window.alert('Picture Inserted Successfully!!!');</script>");
			echo ("<script>window.location='AddAdv.php';</script>");
}
else
	{ 
		echo ("<script>window.alert('Data Exists!! Try Different Data.');</script>");
		echo ("<script>window.location='AddAdv.php';</script>");
		exit;
	}

?>