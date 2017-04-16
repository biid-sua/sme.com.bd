<?php
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:./index.php");
	} 
include_once('../dbconnect.php');

$rsdist=mysql_query("SELECT * FROM district WHERE DistId='$_GET[DistId]'");
$dtdist=mysql_fetch_array($rsdist);
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
              <td width="45%" class="PageTitle">জেলা</td>
              <td width="55%">
              <div align="right"></div></td>
            </tr>
            <tr>
              <td colspan="2" align="center">
              <form id="form1" name="form1" method="post" action="">
                <table width="100%" border="0" cellspacing="2" cellpadding="2">
                  <tr>
                    <td><div align="right">বিভাগ</div></td>
                    <td><div align="center">:</div></td>
                    <td><select name="DivId" id="DivId">
                    <option value="">---Select---</option>
                    <?php
						$rsdiv=mysql_query("SELECT * FROM division");
						while ($dtdiv=mysql_fetch_array($rsdiv))
						{
					?>
                    <option value="<?php echo $dtdiv['DivId'];?>" <?php if ($dtdist['DivId']==$dtdiv['DivId']) echo "SELECTED";?>>
					<?php echo $dtdiv['DivName'];?></option>
                    <?php } ?>
                    </select>                    </td>
                  </tr>
                  <tr>
                    <td><div align="right">জেলা</div></td>
                    <td width="4%"><div align="center">:</div></td>
                    <td width="75%"><input name="District" type="text" id="District" size="30" value="<?php echo $dtdist['DistName'];?>" /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><input name="SubmitDist" type="submit" class="redHead" id="SubmitDist" onclick="return Empty_field('DivId,District','UpdateAddressLine.php')" value="পরিমার্জন করুন" />
                      <input name="DistId" type="hidden" id="DistId" value="<?php echo $dtdist['DistId'];?>" /></td>
                  </tr>
                </table>
                  </form>              </td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2" class="style75">জেলা</td>
              </tr>
            <tr>
              <td colspan="2"><table width="60%" border="0" align="center" cellpadding="2" cellspacing="5">
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