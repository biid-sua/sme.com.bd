<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

//-----------------------Insert Institute/Org/Shop Information--------------------------------------	
if (isset($_POST[AddCategory]))
{
$Category=$_POST[Category];

	$result=mysql_query("SELECT * FROM category WHERE CatName='$Category'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='Category.php';</script>");	
		}
	else
	{
	$result=mysql_query("INSERT INTO category (CatName) VALUES ('$Category')"); 
	echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
	echo ("<script>window.location='Category.php';</script>");	
	}
}	
//-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administration Page.</title>
<link href="../css/mynul.css" rel="stylesheet" type="text/css" />
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
        <td width="75%" valign="top"><table width="99%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="166"><h3>Add Category</h3></td>
            <td width="22">&nbsp;</td>
            <td width="312">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3"><form id="form1" name="form1" method="post" action="">
                <table width="500" border="0" cellspacing="2" cellpadding="2">
                  <tr>
                    <td width="155"><div align="right">Category</div></td>
                    <td width="8"><div align="center">:</div></td>
                    <td width="317"><input name="Category" type="text" id="Category" size="35" /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><input name="AddCategory" type="submit" id="AddCategory" value="Add Now!" onclick="return Empty_field('Category','Category.php')" /></td>
                  </tr>
                </table>
            </form></td>
          </tr>
          <tr>
            <td colspan="3">&nbsp;</td>
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
