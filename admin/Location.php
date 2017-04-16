<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

//-----------------------Insert Location Information--------------------------------------	
if (isset($_POST[AddLocation]))
{
$DivId=$_POST[DivId];
$District=$_POST[District];

	$result=mysql_query("SELECT * FROM district WHERE DistName='$District' AND DivId='$DivId'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='Location.php';</script>");	
		}
	else
	{
	$result=mysql_query("INSERT INTO district (DistName, DivId) VALUES ('$District', '$DivId')"); 
	echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
	echo ("<script>window.location='Location.php';</script>");	
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
    <td style="border-bottom:#CCCCCC 1px solid; padding-bottom:5px"><?php require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td valign="top" class="mainpadding"><table width="100%" border="0" cellspacing="1" cellpadding="2">
      <tr>
        <td width="177" valign="top" style="border-right:#CCCCCC 1px solid"><?php include('LeftMenu.php');?></td>
        <td width="698" valign="top"><table width="99%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="166"><h3>Add Location</h3></td>
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
              <table width="100%" border="0" cellspacing="2" cellpadding="2">
                <tr>
                  <td><div align="right">Division</div></td>
                  <td><div align="center">:</div></td>
                  <td><div align="left">
                      <select name="DivId" class="select" id="DivId">
                        <option value="">---Select---</option>
                        <?php
						$rsdiv=mysql_query("SELECT * FROM division");
						while ($dtdiv=mysql_fetch_array($rsdiv))
						{
					?>
                        <option value="<?php echo $dtdiv['DivId'];?>"><?php echo $dtdiv['DivName'];?></option>
                        <?php } ?>
                      </select>
                  </div></td>
                </tr>
                <tr>
                  <td><div align="right">District</div></td>
                  <td width="4%"><div align="center">:</div></td>
                  <td width="75%"><div align="left">
                      <input name="District" type="text" id="District" size="30" />
                  </div></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td><div align="left">
                      <input name="AddLocation" type="submit" class="style76" id="AddLocation" onclick="return Empty_field('DivId,District','Location.php')" value="Add Location" />
                  </div></td>
                </tr>
              </table>
            </form></td>
          </tr>
          <tr>
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="3"><h3>Location List</h3></td>
          </tr>
          <tr>
            <td colspan="3"><table width="60%" border="0" align="center" cellpadding="2" cellspacing="5">
              <?php 
			   	$rsdiv=mysql_query("SELECT * FROM district");
				while ($dtdist=mysql_fetch_array($rsdiv))
				{
					$DistId=$dtdist['DistId'];
					$DistName=$dtdist['DistName'];
					$DivId=$dtdist['DivId'];
						
			   ?>
              <tr>
                <td width="36%" style="border-bottom:#006600 1px dashed" align="right"><?php echo $DistName;?><span style="border-bottom:#CCCCCC 1px dashed"><img src="../images/orangecircle.gif" width="10" height="10" hspace="5" align="absmiddle" /></span></td>
                <td width="64%" style="border-bottom:#006600 1px dashed"><a href="EditDistrict.php?DistId=<?php echo $dtdist['DistId'];?>" class="top">&#2474;&#2480;&#2495;&#2478;&#2494;&#2480;&#2509;&#2460;&#2472; </a> | <a href="DeleteAddressLine.php?DistId=<?php echo $dtdist['DistId'];?>" class="top" onclick="return confirm('Are You Sure to Delete!???')">&#2478;&#2497;&#2459;&#2497;&#2472;</a></td>
              </tr>
              <?php } ?>
            </table></td>
          </tr>
          <tr>
            <td colspan="3">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><?php require_once('footer.php'); ?></td>
  </tr>
</table>
</body>
</html>
