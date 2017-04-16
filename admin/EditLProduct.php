<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");
//----------------------------Add Product--------------------------
if (isset($_POST['UpdateProduct']))
{
	$LPId=$_POST['LPId'];
	$LCatId=$_POST['LCatId'];
	$SourceId=$_POST['SourceId'];
	$SourceName=$_POST['SourceName'];
	$ProductName=$_POST['ProductName'];
	$LoanAmount=$_POST['LoanAmount'];
	$InterestRate=$_POST['InterestRate'];
	$Collateral=$_POST['Collateral'];
	
	$sqlP=mysql_query("UPDATE lproduct SET LCatId='$LCatId',SourceId='$SourceId',SourceName='$SourceName',ProductName='$ProductName',LoanAmount='$LoanAmount',InterestRate='$InterestRate',Collateral='$Collateral' WHERE LPId='$LPId'");
		echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
		echo ("<script>window.location='LoanProduct.php';</script>");
}
//-----------------------------------------------------------------
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Administration Page.</title>
<link href="../css/mynul_bng.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="../Script/jvalid.js" type="text/javascript"></script>
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
                  <table width="98%" border="0" align="right" cellpadding="1" cellspacing="2">
				  	<?php 
						$lpsql=mysql_query("SELECT * FROM lproduct WHERE LPId='$_GET[LPId]'");
						$lpdt=mysql_fetch_array($lpsql);
					?>
                    <tr>
                      <td colspan="3"><h4>Edit Loan Product </h4></td>
                    </tr>
                    <tr>
                      <td><div align="right">Loan Category  </div></td>
                      <td><strong>:</strong></td>
                      <td><select name="LCatId" id="LCatId">
                          <option value="">---Select---</option>
                          <?php
						  	$LnCatId=$_REQUEST['LCatId'];
							if ($LnCatId=='') $LnCatId=$lpdt['LCatId'];
							$rsSrc=mysql_query("SELECT * FROM lcategory");
							while ($dtLC=mysql_fetch_array($rsSrc))
							{
						 ?>
                          <option value="<?php echo $dtLC['LCatId'];?>" <?php if ($LnCatId==$dtLC['LCatId']) echo "SELECTED";?>> <?php echo $dtLC['LCatName'];?> </option>
                          <?php } ?>
                      </select></td>
                    </tr>
                    <tr>
                      <td width="24%"><div align="right">Source</div></td>
                      <td width="2%"><strong>:</strong></td>
                      <td width="74%"><select name="SourceId" id="SourceId" onchange="this.form.submit();">
                        <option value="">---Select---</option>
                        <?php
						$LnSourceId=$_REQUEST['SourceId'];
						if ($LnSourceId=='') $LnSourceId=$lpdt['SourceId']; 
						$rsSrc=mysql_query("SELECT * FROM lsource");
						while ($dtSrc=mysql_fetch_array($rsSrc))
						{
					?>
                        <option value="<?php echo $dtSrc['LSrcId'];?>" <?php if ($LnSourceId==$dtSrc['LSrcId']) echo "SELECTED";?>> <?php echo $dtSrc['LSrcName'];?> </option>
                        <?php } ?>
                      </select></td>
                    </tr>
                    <tr>
                      <td><div align="right">Source Name </div></td>
                      <td><div align="center"><strong>:</strong></div></td>
                      <td><select name="SourceName" id="SourceName">
                        <option value="">---Select---</option>
                        <?php
					$SRCID=$_REQUEST[SourceId];
					if ($SRCID=='') $SRCID=$lpdt['SourceId'];
					$rsSrcN=mysql_query("SELECT * FROM sourcename WHERE LSrcId='$SRCID'");
					while ($dtSrcNS=mysql_fetch_array($rsSrcN))
					{
				?>
                        <option value="<?php echo $dtSrcN['Id'];?>" <?php if ($dtSrcNS['Id']==$lpdt['SourceName']) echo "SELECTED";?>><?php echo $dtSrcNS['SourceName'];?> </option>
                        <?php } ?>
                      </select></td>
                    </tr>
                    <tr>
                      <td valign="top"><div align="right">Product Name  </div></td>
                      <td valign="top"><div align="center"><strong>:</strong></div></td>
                      <td><input name="ProductName" type="text" id="ProductName" value="<?php echo $lpdt['ProductName'];?>" size="30" /></td>
                    </tr>
                    <tr>
                      <td><div align="right">Amount of Loan </div></td>
                      <td><div align="center"><strong>:</strong></div></td>
                      <td><input name="LoanAmount" type="text" id="LoanAmount" value="<?php echo $lpdt['LoanAmount'];?>" size="30" /></td>
                    </tr>
                    <tr>
                      <td><div align="right">Interest Rates </div></td>
                      <td><div align="center"><strong>:</strong></div></td>
                      <td><input name="InterestRate" type="text" id="InterestRate" value="<?php echo $lpdt['InterestRate'];?>" size="30" /></td>
                    </tr>
                    <tr>
                      <td><div align="right">Collateral</div></td>
                      <td><div align="center"><strong>:</strong></div></td>
                      <td><input name="Collateral" type="text" id="Collateral" value="<?php echo $lpdt['Collateral'];?>" size="30" /></td>
                    </tr>
                    <tr>
                      <td><div align="right"></div></td>
                      <td>&nbsp;</td>
                      <td><input name="UpdateProduct" type="submit" id="UpdateProduct" value="Edit Product" onclick="return Empty_field('LCatId,SourceId,SourceName,ProductName,LoanAmount,InterestRate','EditLProduct.php')" />
                        <input name="LPId" type="hidden" id="LPId" value="<?php echo $lpdt['LPId'];?>" /></td>
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
              <td><h4>&nbsp;&nbsp;&nbsp;Product</h4></td>
            </tr>
            <tr>
              <td><table width="98%" border="0" align="center" cellpadding="2" cellspacing="2">
                  <?php 
				$Cnt=0;
				$sql=mysql_query("SELECT * FROM lproduct ORDER BY LPId DESC");
				while ($dt=mysql_fetch_array($sql))
				{
				  if ($Cnt=='') $Cnt=1; else $Cnt=$Cnt;
			?>
                  <tr>
                    <td width="9%" style="border-bottom:#CCCCCC 1px dashed"><div align="center"><?php echo $Cnt; ?></div></td>
                    <td width="70%" style="border-bottom:#CCCCCC 1px dashed"><?php echo $dt['ProductName'].' &raquo; &raquo; '.$dt['LoanAmount'];?> </td>
                    <td width="21%" style="border-bottom:#CCCCCC 1px dashed"><div align="center"><a href="EditLProduct.php?LPId=<?php echo $dt['LPId'];?>" class="top">&#2474;&#2480;&#2495;&#2478;&#2494;&#2480;&#2509;&#2460;&#2472; </a> || <a href="DeleteLoan.php?LPId=<?php echo $dt['LPId'];?>" class="top" onclick="return confirm('Are You Sure to Delete!???')">&#2478;&#2497;&#2459;&#2497;&#2472;</a> </div></td>
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
    <td><?php require_once('footer.php'); ?></td>
  </tr>
</table>
</body>
</html>
