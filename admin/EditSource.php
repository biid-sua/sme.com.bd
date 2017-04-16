<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include("../dbconnect.php");

//---------------------------Insert Category--------------------------------
if (isset($_POST['EditSrcDetails'])) 
 {
	$SourceType=$_POST['SourceType'];
	$DivId=$_POST['DivId'];
	$DistId=$_POST['DistId'];
	$SrcName=$_POST['SrcName'];
	$SrcAddress=$_POST['SrcAddress'];
	$SrcContact=$_POST['SrcContact'];
	$SrcId=$_POST['SrcId'];

	$query = "UPDATE srcdetails SET SourceType='$SourceType',DivId='$DivId',DistId='$DistId',SrcName='$SrcName',SrcAddress='$SrcAddress',SrcContact='$SrcContact' WHERE SrcId=$SrcId";
	mysql_query ($query) or die (mysql_error());
	echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
	echo ("<script>window.location='EditSource.php';</script>");
	exit;
} 
//-----------------------------ENDS--------------------------------------
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Administration Page.</title>
<link href="../css/mynul_bng.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="rte/editor.js" type="text/javascript"></script>
</head>

<body>
<table width="888" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border:#999999 1px solid">
  <tr>
    <td style="border-bottom:#999999 1px solid"><?php require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td class="mainpadding"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="20%" valign="top"><span style="border-right:#CCCCCC 1px solid">
          <?php include('LeftMenu.php');?>
        </span></td>
        <td width="80%"><table width="100%" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td><form id="form1" name="form1" method="post" action="">
			<?php 
				$Sresult=mysql_query("SELECT * FROM srcdetails WHERE SrcId='$_GET[SrcId]'");
				$Sdt=mysql_fetch_array($Sresult);			
			?>
              <table width="98%" border="0" align="right" cellpadding="1" cellspacing="2">
                <tr>
                  <td colspan="3"><h4>Edit Loan Source Details </h4></td>
                </tr>
                <tr>
                  <td><div align="right">Source Type </div></td>
                  <td><strong>:</strong></td>
                  <td><select name="SourceType" id="SourceType">
                      <option value="">---Select---</option>
                      <?php
						$SourceId=$_REQUEST['SourceType'];
						if ($SourceId=='') $SourceId=$Sdt['SourceType'];
						$rsSrc=mysql_query("SELECT * FROM lsource");
						while ($dtSrc=mysql_fetch_array($rsSrc))
						{
					?>
                      <option value="<?php echo $dtSrc['LSrcId'];?>" <?php if ($SourceId==$dtSrc['LSrcId']) echo "SELECTED";?>> <?php echo $dtSrc['LSrcName'];?> </option>
                      <?php } ?>
                  </select></td>
                </tr>
                <tr>
                  <td width="24%"><div align="right">Location</div></td>
                  <td width="2%"><strong>:</strong></td>
                  <td width="74%"><select name="DivId" id="DivId" onchange="this.form.submit();">
                    <option value="">---Select---</option>
                    <?php
						$DivisionId=$_REQUEST[DivId];
						if ($DivisionId=='') $DivisionId=$Sdt['DivId'];
						$rsdiv=mysql_query("SELECT * FROM division");
						while ($dtdiv=mysql_fetch_array($rsdiv))
						{
					?>
                    <option value="<?php echo $dtdiv['DivId'];?>" <?php if ($DivisionId==$dtdiv['DivId']) echo "SELECTED";?>>
                    <?php echo $dtdiv['DivName'];?>
                      </option>
                    <?php } ?>
                  </select>
                    <select name="DistId" id="DistId">
                      <option value="">---Select---</option>
                      <?php
					  	$DistrictId=$_REQUEST['DistId'];
						if ($DistrictId=='') $DistrictId=$Sdt['DistId'];
						$rsdist=mysql_query("SELECT * FROM district WHERE DivId='$DivisionId'");
						while ($dtdist=mysql_fetch_array($rsdist))
						{
					?>
                      <option value="<?php echo $dtdist['DistId'];?>" <?php if ($DistrictId==$dtdist['DistId']) echo "SELECTED"; ?>>
                      <?php echo $dtdist['DistName'];?>
                      </option>
                      <?php } ?>
                    </select></td>
                </tr>
                <tr>
                  <td><div align="right">Source Name </div></td>
                  <td><div align="center"><strong>:</strong></div></td>
                  <td><select name="SrcName" id="SrcName">
                    <option value="">---Select---</option>
                    <?php
					$SourceTp=$_REQUEST[SourceType];
					if ($SourceTp=='') $SourceTp=$Sdt['SourceType'];
					$rsSrcN=mysql_query("SELECT * FROM sourcename WHERE LSrcId='$SourceTp'");
					while ($dtSrcN=mysql_fetch_array($rsSrcN))
					{
				?>
                    <option value="<?php echo $dtSrcN['Id'];?>" <?php if ($dtSrcN['Id']==$Sdt['SrcName']) echo "SELECTED";?>><?php echo $dtSrcN['SourceName'];?> </option>
                    <?php } ?>
                  </select></td>
                </tr>
                <tr>
                  <td valign="top"><div align="right">Detail Address </div></td>
                  <td valign="top"><div align="center"><strong>:</strong></div></td>
                  <td><textarea name="SrcAddress" cols="38" rows="3" id="SrcAddress"><?php echo $Sdt['SrcAddress'];?></textarea></td>
                </tr>
                <tr>
                  <td><div align="right">Contact Person </div></td>
                  <td><div align="center"><strong>:</strong></div></td>
                  <td><input name="SrcContact" type="text" id="SrcContact" value="<?php echo $Sdt['SrcContact'];?>" size="30" /></td>
                </tr>
                <tr>
                  <td><div align="right"></div></td>
                  <td>&nbsp;</td>
                  <td><input name="EditSrcDetails" type="submit" id="EditSrcDetails" value="Add Source Details" onclick="return Empty_field('SourceType,DivId,DistId,SrcName,SrcAddress,SrcContact','EditSource.php')" />
                    <input name="SrcId" type="hidden" id="SrcId" value="<?php echo $Sdt['SrcId']; ?>" /></td>
                </tr>
                <tr>
                  <td><div align="right"></div></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table>
            </form></td>
          </tr>
          <tr>
            <td><h4>Sources</h4></td>
          </tr>
          <tr>
            <td><table width="98%" border="0" align="center" cellpadding="2" cellspacing="2">
              <?php 
				$Cnt=0;
				$sql=mysql_query("SELECT * FROM srcdetails ORDER BY SrcName ASC");
				while ($dt=mysql_fetch_array($sql))
				{
					$sqlSN=mysql_query("SELECT * FROM sourcename WHERE Id='$dt[SrcName]'");
					$dtSN=mysql_fetch_array($sqlSN);
					
				 	if ($Cnt=='') $Cnt=1; else $Cnt=$Cnt;
			?>
              <tr>
                <td width="9%" style="border-bottom:#CCCCCC 1px dashed"><div align="center"><?php echo $Cnt; ?></div></td>
                <td width="70%" style="border-bottom:#CCCCCC 1px dashed"><?php echo $dtSN['SourceName'].' &raquo; &raquo; '.$dt['SrcAddress'];?> </td>
                <td width="21%" style="border-bottom:#CCCCCC 1px dashed"><div align="center"><a href="EditSource.php?SrcId=<?php echo $dt['SrcId'];?>" class="top">পরিমার্জন </a> || <a href="DeleteLoan.php?SrcId=<?php echo $dt['SrcId'];?>" class="top" onclick="return confirm('Are You Sure to Delete!???')">মুছুন</a> </div></td>
              </tr>
              <?php
				$Cnt++;
				}
			?>
            </table></td>
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