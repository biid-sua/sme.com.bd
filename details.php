<?php 
include_once("dbconnect.php");

$Menu=$_GET[Id]; //echo $Menu;

if  ($Menu==1) $Title="তথ্য ও পরামর্শ";
elseif  ($Menu==2) $Title="ঋণ";
elseif  ($Menu==3) $Title="যোগাযোগের ঠিকানা";
else $Title="লিংক পাতা";

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:: Welcome to SME.COM.BD :.</title>
<link href="../Sudha/File upload/css/mynul_bng.css" type="text/css" rel="stylesheet" />
<style type="text/css">
<!--
.style3 {font-size: 16px; color: #00CCCC; }
-->
</style>
</head>
<body>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border-bottom:#CCCCCC 1px solid; border-left:#CCCCCC 1px solid; border-right:#CCCCCC 1px solid">
  <tr>
    <td><?php include('header.php'); ?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td>&nbsp;</td>
  </tr>  
   <tr>
    <td><form id="form1" name="form1" method="post" action="details.php">
      <table width="626" border="0" align="center" cellpadding="1" cellspacing="0">
        <tr>
			<?php 
				$Sdid=$_GET[Id];
				if (Sdid=='') $Sdid=$SrcDtlsId;
				//echo "SELECT * FROM proddetails WHERE LPId='$Sdid'";
				$sql=mysql_query("SELECT * FROM proddetails WHERE LPId='$Sdid'");
				$Ddt=mysql_fetch_array($sql);
				//echo "SELECT * FROM lproduct WHERE LPId='$Ddt[LPId]'";
				$Lpdt=mysql_fetch_array(mysql_query("SELECT * FROM lproduct WHERE LPId='$Ddt[LPId]'"));
			?>
			
          <td width="196" valign="top"><div align="right">ঋণ গ্রহনের উদ্দেশ্য</div></td>
          <td width="15" valign="top"><div align="center"><strong>:</strong></div></td>
          <td width="409">
           <?php 
		   if ($_REQUEST['LoanPurpose']=='') $Purpose=$Ddt['LoanPurpose'];
		   else $Purpose=$_REQUEST['LoanPurpose'];
		   echo nl2br($Purpose);
		   //echo $Ddt['LoanPurpose'].'2222'.$_REQUEST['LoanPurpose'];
		   ?>          </td>
        </tr>
        <tr>
          <td valign="top"><div align="right">আবেদনের যোগ্যতা</div></td>
          <td valign="top"><div align="center"><strong>:</strong></div></td>
          <td>
            <?php if ($_REQUEST['LoanQualification']=='') $Qualification=$Ddt['Qualification'];
			else $Qualification=$_REQUEST['LoanQualification'];
			echo nl2br($Qualification);
			?>          </td>
        </tr>
        <tr>
          <td valign="top"><div align="right">প্রয়োজনীয় কাগজপত্র </div></td>
          <td valign="top"><div align="center"><strong>:</strong></div></td>
          <td>
            <?php if ($_REQUEST['LoanPaper']=='') $Imppaper=$Ddt['ImpPapers'];
			else $Imppaper=$_REQUEST['LoanPaper'];
			echo nl2br($Imppaper);
			?>          </td>
        </tr>
        <tr>
          <td valign="top"><div align="right">অন্যান্য</div></td>
          <td valign="top"><div align="center"><strong>:</strong></div></td>
          <td><?php if ($_REQUEST['Others']=='') $Other=$Ddt['Others'];
		  else $Other=$_REQUEST['Others'];
		  echo nl2br($Other);
		  ?>          </td>
        </tr>
	
		
        <tr>
          <td height="28" valign="top"><div align="right">আপনার অবস্থান</div></td>
          <td valign="top"><div align="center"><strong>:</strong></div></td>
          <td><label></label>
            <table width="100%" border="0" cellspacing="1" cellpadding="1">
              <tr>
                <td>বিভাগ
                  <select name="Division" id="Division" onchange="this.form.submit();">
                    <option value="">---Select---</option>
                    <?php
					$Div=mysql_query("SELECT * FROM division");
					while ($Divdt=mysql_fetch_array($Div))
					{
				?>
                    <option value="<?php echo $Divdt['DivId'];?>" <?php if ($_REQUEST['Division']==$Divdt['DivId']) echo "SELECTED";?>><?php echo $Divdt['DivName'];?></option>
                    <?php }?>
                    </select>
                </p>
                </td>
                <td>জেলা 
                  <select name="District" id="District" onchange="this.form.submit();">
                  <option value="">---Select---</option>
                  <?php
					$Dis=mysql_query("SELECT * FROM district WHERE DivId='$_REQUEST[Division]'");
					while ($Disdt=mysql_fetch_array($Dis))
					{
				?>
                  <option value="<?php echo $Disdt['DistId'];?>"<?php if ($_REQUEST['District']==$Disdt['DistId']) echo "SELECTED";?>><?php echo $Disdt['DistName'];?></option>
                  <?php }?>
                </select>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
            </table>
            <label>
            <input name="LoanPurpose" type="hidden" id="LoanPurpose" value="<?php if($_REQUEST['LoanPurpose']=='') $Purpose=$Ddt['LoanPurpose'];
		   else $Purpose=$_REQUEST['LoanPurpose'];
		   echo $Purpose;?>" />
            <input name="LoanQualification" type="hidden" id="LoanQualification" value="<?php if ($_REQUEST['LoanQualification']=='') $Qualification=$Ddt['Qualification'];
			else $Qualification=$_REQUEST['LoanQualification'];
			echo $Qualification;?>" />
            <input name="LoanPaper" type="hidden" id="LoanPaper" value="<?php if ($_REQUEST['LoanPaper']=='') $Imppaper=$Ddt['ImpPapers'];
			else $Imppaper=$_REQUEST['LoanPaper'];
			echo $Imppaper;?>" />
            <input name="Others" type="hidden" id="Others" value="<?php  if ($_REQUEST['Others']=='') $Other=$Ddt['Others'];
		  else $Other=$_REQUEST['Others'];
		  echo $Other;?>" />
            <input name="SrcDtlsId" type="hidden" id="SrcDtlsId" value="<?php if ($_REQUEST['SrcDtlsId']=='') $Gid=$_GET[Id];
			else $Gid=$_REQUEST['SrcDtlsId']; echo $Gid;?>" />
            <input name="LpData" type="hidden" id="LpData" value="<?php if ($_REQUEST['LpData']=='') $Ldata=$Lpdt['SourceName'];
			else $Ldata=$_REQUEST['LpData']; echo $Ldata;?>" />
            </label></td>
        </tr>
      </table>
        </form>    </td>
  </tr>
  	   <tr>
         <td colspan="3">&nbsp;</td>
      </tr> 
	  <?php if (($_POST[Division]!='') && ($_POST[District]!='') && ($Ldata!='')) { ?>
	  <tr>
        <td colspan="3"><h4>&nbsp;&nbsp;&nbsp; বিস্তারিত ঠিকানা </h4></td>
      </tr> 
	  <tr>
        <td colspan="3">&nbsp;</td>
      </tr> 
	  <tr>
        <td colspan="3"><table width="95%" border="0" align="center" cellpadding="2" cellspacing="2">
          <tr>
            <td width="20%" valign="top" bgcolor="#330033" style="border-bottom:#CCCCCC 1px dashed"><span class="style3">ব্যাংক/এনজিও </span></td>
            <td width="66%" valign="top" bgcolor="#330033" class="style3" style="border-bottom:#CCCCCC 1px dashed">বিস্তারিত ঠিকানা </td>
            <td width="14%" valign="top" bgcolor="#330033" class="style3" style="border-bottom:#CCCCCC 1px dashed">ভারপ্রাপ্ত ব্যাক্তি </td>
          </tr>
        </table>
		<?php } ?>
		<table width="95%" border="0" align="center" cellpadding="2" cellspacing="2">
          <?php 
				$Cnt=0;
				//echo "SELECT * FROM srcdetails WHERE DivId='$_POST[Division]' AND DistId='$_POST[District]' AND SrcName='$Ldata'  ORDER BY SrcName ASC";exit;
				$sql=mysql_query("SELECT * FROM srcdetails WHERE DivId='$_POST[Division]' AND DistId='$_POST[District]' AND SrcName='$Ldata'  ORDER BY SrcName ASC");
				while ($dt=mysql_fetch_array($sql))
				{
					$sqlSN=mysql_query("SELECT * FROM sourcename WHERE Id='$dt[SrcName]'");
					$dtSN=mysql_fetch_array($sqlSN);
					
				 	if ($Cnt=='') $Cnt=1; else $Cnt=$Cnt;
						//----Column color for each row-----
						if (($Cnt%2)==0) $CellColor="#FBF4E1";
						else $CellColor="#E2FEE9";
			?>
          <tr bgcolor="<?php echo $CellColor; ?>">
            <td width="20%" valign="top" style="border-bottom:#CCCCCC 1px dashed"><?php echo $dtSN['SourceName'];?> </td>
            <td width="66%" valign="top" style="border-bottom:#CCCCCC 1px dashed"><?php echo $dt['SrcAddress'];?></td>
            <td width="14%" valign="top" style="border-bottom:#CCCCCC 1px dashed"><?php echo $dt['SrcContact'];?></td>
          </tr>
          <?php
				$Cnt++;
				}
			?>
        </table>
        <p>&nbsp;</p></td>
      </tr>
	  <tr>
	    <td colspan="3"><?php include('footer.php'); ?></td>
  </tr>  
</table>
      
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</body>
</html>