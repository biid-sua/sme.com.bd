<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

//---------------------------Insert Source Name --------------------------------
if (isset($_POST['AddSource'])) 
 {
	$LSrcId=$_POST['SourceType'];
	$SourceName=$_POST['SourceName'];

	$result=mysql_query("SELECT * FROM sourcename WHERE SourceName='$SourceName'") or die ("Can't execute query"); 
	$row = mysql_fetch_array($result);
	$num = mysql_num_rows($result); 
	//echo $num;
			if ($num < 1)
				{
					
					$query = mysql_query ("INSERT INTO sourcename (SourceName, LSrcId) VALUES ('$SourceName', '$LSrcId')") or die (mysql_error());
					echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
					echo ("<script>window.location='SourceName.php';</script>");
					exit;
				} 
			else
				{ 
					echo ("<script>window.alert('Data Exists!! Try Different Data.');</script>");
					echo ("<script>window.location='SourceName.php';</script>");
					exit;
				}
 }
//-----------------------------ENDS--------------------------------------
$Lsql="SELECT * FROM sourcename";
$Lresult=mysql_query($Lsql);
$Lnum=mysql_num_rows($Lresult); //echo $num //TOTAL CATEGORY;

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
    <td style="border-bottom:#CCCCCC 1px solid; padding-bottom:5px"><?php include('header.php'); ?></td>
  </tr>
  <tr>
    <td valign="top" class="mainpadding"><table width="100%" border="0" cellspacing="1" cellpadding="2">
      <tr>
        <td width="20%" valign="top" style="border-right:#CCCCCC 1px solid"><?php include('LeftMenu.php');?></td>
        <td width="79%" valign="top"><table width="99%" border="0" align="center" cellpadding="2" cellspacing="2">
          <tr>
            <td><h4>Source Name</h4></td>
          </tr>
          <tr>
            <td><form id="form1" name="form1" method="post" action="">
              <table width="100%" border="0" cellspacing="1" cellpadding="2">
                <tr>
                  <td width="21%"><div align="right" class="ENGTD">Source Type : </div></td>
                  <td width="79%"><select name="SourceType" id="SourceType">
                    <option value="">---Select---</option>
                    <?php
					$rsSrc=mysql_query("SELECT * FROM lsource");
					while ($dtSrc=mysql_fetch_array($rsSrc))
					{
				?>
                    <option value="<?php echo $dtSrc['LSrcId'];?>" <?php if ($_REQUEST['SourceType']==$dtSrc['LSrcId']) echo "SELECTED";?>> <?php echo $dtSrc['LSrcName'];?> </option>
                    <?php } ?>
                  </select></td>
                  </tr>
                <tr>
                  <td class="ENGTD"><div align="right">Source Name : </div></td>
                  <td><input name="SourceName" type="text" id="SourceName" size="50" /></td>
                  </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input name="AddSource" type="submit" class="style76" id="AddSource" onclick="return Empty_field('SourceType,SourceName','SourceName.php')" value="যোগ করুন" /></td>
                  </tr>
              </table>
            </form></td>
          </tr>
          <tr>
            <td><table width="70%" border="0" align="center" cellpadding="2" cellspacing="5">
              <?php 
			   	$rsSN=mysql_query("SELECT * FROM sourcename");
				while ($dtSN=mysql_fetch_array($rsSN))
				{
			   ?>
              <tr>
                <td width="79%" style="border-bottom:#006600 1px dashed"><?php echo $dtSN['SourceName'];?><span style="border-bottom:#CCCCCC 1px dashed"> <img src="../images/orangecircle.gif" width="10" height="10" hspace="5" align="absmiddle" /></span></td>
                <td width="21%" style="border-bottom:#006600 1px dashed"><a href="EditSourceName.php?SrcNameId=<?php echo $dtSN['Id'];?>" class="top">পরিমার্জন </a> | <a href="DeleteLoan.php?SrcNameId=<?php echo $dtSN['Id'];?>" class="top" onclick="return confirm('Are You Sure to Delete!???')">মুছুন</a></td>
              </tr>
              <?php } ?>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><?php include('footer.php'); ?></td>
  </tr>
</table>
</body>
</html>
