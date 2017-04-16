<?php
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:./index.php");
	} 
include_once('../dbconnect.php');

	$rsdiv=mysql_query("SELECT * FROM division WHERE DivId='$_GET[DivId]'");
	$dtdiv=mysql_fetch_array($rsdiv);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/mynul_bng.css" type="text/css" rel="stylesheet" />
<script src="../Script/jvalid.js" type="text/javascript"></script>
<title>Welcome to Admin Panel</title>
</head>

<body>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" style="border:#006600 1px dotted">
  <tr>
    <td><?php include_once('./header.php'); ?></td>
  </tr>
  <tr>
    <td><table width="780" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="175" valign="top" style="border-right:#999999 1px dotted"><span style="border-right:#CCCCCC 1px solid">
          <?php include('LeftMenu.php');?>
        </span></td>
        <td width="603" valign="top" class="style62">&nbsp;
          <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="45%" class="PageTitle">বিভাগ</td>
              <td width="55%">
              <div align="right"></div></td>
            </tr>
            <tr>
              <td colspan="2" align="center">
              <form id="form1" name="form1" method="post" action="">
                <table width="100%" border="0" cellspacing="2" cellpadding="2">
                  <tr>
                    <td width="21%"><div align="right">বিভাগ</div></td>
                    <td width="4%"><div align="center">:</div></td>
                    <td width="75%"><input name="Division" type="text" id="Division" size="30" value="<?php echo $dtdiv['DivName'];?>" /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><input name="SubmitDiv" type="submit" class="redHead" id="SubmitDiv" onclick="return Empty_field('Division','UpdateAddressLine.php')" value="পরিমার্জন করুন" />
                      <input name="DivId" type="hidden" id="DivId" value="<?php echo $dtdiv['DivId'];?>" /></td>
                  </tr>
                </table>
                  </form>              </td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2" class="style75">বিভাগ</td>
              </tr>
            <tr>
              <td colspan="2">
               <table width="70%" border="0" align="center" cellpadding="2" cellspacing="2">
               <?php 
			   	$rsdiv=mysql_query("SELECT * FROM division");
				while ($dtdiv=mysql_fetch_array($rsdiv))
				{
			   ?>
                <tr>
                  <td width="73%" style="border-bottom:#006600 1px dashed"><?php echo $dtdiv['DivName'];?></td>
                  <td width="27%" style="border-bottom:#006600 1px dashed"><a href="EditDivision.php?DivId=<?php echo $dtdiv['DivId'];?>" class="menu-link">পরিমার্জন </a> | <a href="DeleteAddressLine.php?DivId=<?php echo $dtdiv['DivId'];?>" class="menu-link">মুছুন</a></td>
                  </tr>
                  <?php } ?>
              </table></td>
              </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table>
          </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><?php include_once('./footer.php'); ?></td>
  </tr>
</table>
</body>
</html>