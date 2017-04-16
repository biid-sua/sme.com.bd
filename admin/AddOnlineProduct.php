<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

//-----------------------Insert Online Market Information--------------------------------------	
if (isset($_POST[AddProduct]))
{
$Product=$_POST[Product];
$Details=$_POST[Details];
$Producer=$_POST[Producer];
	$sqlP=mysql_query("SELECT * FROM producer WHERE Producer='$Producer'");
	$dtProducer=mysql_fetch_array($sqlP);
	$ProducerId=$dtProducer['ProducerId'];
$Cost=$_POST[Cost];
$Location=$_POST[Location];
$Status=$_POST[Status];
$Date=date('Y-m-d');

	$result=mysql_query("SELECT * FROM omp WHERE Product='$Product' AND Details='$Details' AND Producer='$Producer' AND Cost='$Cost' AND Location='$Location'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='AddOnlineProduct.php';</script>");	
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

	$src_img=imagecreatefromjpeg("$dest");
	$imagedata=getimagesize("$dest");
	$thumb_w=100;
	$thumb_h=$Photoheight * ($thumb_w/$Photowidth);
	$dst_img=imagecreatetruecolor($thumb_w,$thumb_h);
	imagecopyresized($dst_img,$src_img,0,0,0,0,$thumb_w,$thumb_h,imagesx($src_img),imagesy($src_img));
	imagejpeg($dst_img,"$thumb/$FileName");	
	
//----------------- Insert into DB ------------------------------------------
	
	$result=mysql_query("INSERT INTO omp (Product, Details, Producer, ProducerId, Cost, Location, Photo, Status, Date) VALUES ('$Product', '$Details', '$Producer','$ProducerId', '$Cost', '$Location', '$FileName', '$Status', '$Date')"); 
	echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
	echo ("<script>window.location='AddOnlineProduct.php';</script>");	
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
<script type="text/javascript" src="Scripts/jquery-1.2.1.pack.js"></script>
<script language="javascript" type="text/javascript">
//---------- Auto complete with ajax -----------------
function lookup(inputString) 
{
	if(inputString.length == 0) {
	// Hide the suggestion box.
	$('#suggestions').hide();
	} 
	else 
	{
		$.post("fetch_name.php", {queryString: ""+inputString+""}, function(data){
				if(data.length >0) {
					$('#suggestions').show();
					$('#autoSuggestionsList').html(data);
				}
		});
	}
} // lookup
	
function fillName(thisValue) 
{
	$('#Producer').val(thisValue);
	setTimeout("$('#suggestions').hide();", 200);
}

//-----------------------------------
</script>
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
                <td><h3>পণ্য যোগ</h3></td>
                <td><div align="right"><a href="ViewProducts.php" class="menu-link">পণ্য দেখুন</a></div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td class="mainpadding">&nbsp;</td>
          </tr>
          <tr>
            <td><form action="" method="post" enctype="multipart/form-data" name="form1" id="form1" onsubmit="return validemail()">
              <table width="100%" border="0" cellspacing="1" cellpadding="2">
                <tr>
                  <td width="29%"><div align="right"> Product
                    Name</div></td>
                  <td width="2%"><div align="center">:</div></td>
                  <td width="69%"><input name="Product" type="text" class="text" id="Product" size="48" />
                    *</td>
                </tr>
                <tr>
                  <td><div align="right"> Details</div></td>
                  <td><div align="center">:</div></td>
                  <td><textarea name="Details" cols="45" rows="5" class="text" id="Details"></textarea>
                    *</td>
                </tr>
                <tr>
                  <td><div align="right">Producer </div>
                      <div align="right"></div></td>
                  <td><div align="center">:</div></td>
                  <td><input name="Producer" type="text" id="Producer" value="<?=$_REQUEST['Producer'];?>" size="46"  onkeyup="lookup(this.value);" onblur="fillName();"/>
                      <div class="suggestionsBox" id="suggestions" style="display: none;"> <img src="./images/upArrow.png" style="position: relative; top: -12px; left: 30px;" alt="upArrow" />
                          <div class="suggestionList" id="autoSuggestionsList"> &nbsp; </div>
                      </div>
                    *</td>
                </tr>
                <tr>
                  <td><div align="right">Product Cost</div></td>
                  <td><div align="center">:</div></td>
                  <td><input name="Cost" type="text" class="text" id="Cost" size="48" /></td>
                </tr>
                <tr>
                  <td><div align="right">Product Picture </div>
                      <div align="right"></div></td>
                  <td><div align="center">:</div></td>
                  <td><input name="filename" type="file" id="filename" size="34" /></td>
                </tr>
                <tr>
                  <td><div align="right">Availablity Location</div></td>
                  <td><div align="center">:</div></td>
                  <td><input name="Location" type="text" class="text" id="Location" size="48" />
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
                  <td><input name="AddProduct" type="submit" id="AddProduct" onclick="return Empty_field('Product,Details,Producer,Location','AddOnlineProduct.php')" value="Add Product" /></td>
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
