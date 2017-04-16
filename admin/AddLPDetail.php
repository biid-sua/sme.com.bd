<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");
//----------------------------Add Product--------------------------
if (isset($_POST['AddProdDetails']))
{
	$LPId=$_POST['LPId'];
	$LoanPurpose=$_POST['LoanPurpose'];
	$Qualification=$_POST['Qualification'];
	$ImpPapers=$_POST['ImpPapers'];
	$Others=$_POST['Others'];

	$sqlPD=mysql_query("SELECT * FROM proddetails WHERE LPId='$LPId' AND LoanPurpose='$LoanPurpose' AND Qualification='$Qualification' AND ImpPapers='$ImpPapers' AND Others='$Others'");
	$PDnum=mysql_num_rows($sqlPD);
	if ($PDnum < 1)
	{
		$sql=mysql_query("INSERT INTO proddetails (LPId,LoanPurpose,Qualification,ImpPapers,Others) VALUES ('$LPId','$LoanPurpose','$Qualification','$ImpPapers','$Others')");
		echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
		echo ("<script>window.location='AddLPDetail.php';</script>");
	}
	else
	{
		echo ("<script>window.alert('Same Data Exists!!!');</script>");
		echo ("<script>window.location='AddLPDetail.php';</script>");
		exit;
	}
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
                  <tr>
                    <td colspan="3"><h4>Loan Product Details </h4></td>
                  </tr>
                  <tr>
                    <td width="24%"><div align="right">Product </div></td>
                    <td width="2%"><strong>:</strong></td>
                    <td width="74%"><select name="LPId" id="LPId">
                        <option value="">---Select---</option>
                        <?php
							$rsLP=mysql_query("SELECT * FROM lproduct");
							while ($dtLP=mysql_fetch_array($rsLP))
							{
						 ?>
                        <option value="<?php echo $dtLP['LPId'];?>"> <?php echo $dtLP['ProductName'];?> </option>
                        <?php } ?>
                    </select></td>
                  </tr>
                  <tr>
                    <td valign="top"><div align="right">Purpose of Loan </div></td>
                    <td valign="top"><div align="center"><strong>:</strong></div></td>
                    <td><textarea name="LoanPurpose" cols="45" rows="7" id="LoanPurpose"></textarea></td>
                  </tr>
                  <tr>
                    <td valign="top"><div align="right">Qualification for Loan </div></td>
                    <td valign="top"><div align="center"><strong>:</strong></div></td>
                    <td><textarea name="Qualification" cols="45" rows="7" id="Qualification"></textarea></td>
                  </tr>
                  <tr>
                    <td valign="top"><div align="right">Important Papers </div></td>
                    <td valign="top"><div align="center"><strong>:</strong></div></td>
                    <td><textarea name="ImpPapers" cols="45" rows="7" id="ImpPapers"></textarea></td>
                  </tr>
                  <tr>
                    <td valign="top"><div align="right">Others</div></td>
                    <td valign="top"><div align="center"><strong>:</strong></div></td>
                    <td><textarea name="Others" cols="45" rows="7" id="Others"></textarea></td>
                  </tr>
                  <tr>
                    <td><div align="right"></div></td>
                    <td>&nbsp;</td>
                    <td><input name="AddProdDetails" type="submit" id="AddProdDetails" value="Add Product Details" onclick="return Empty_field('LPId,LoanPurpose,Qualification,ImpPapers,LoanAmount,InterestRate','AddLPDetail.php')" /></td>
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
              <td><h4>&nbsp;&nbsp;&nbsp;Product Details </h4></td>
            </tr>
            <tr>
              <td><table width="98%" border="0" align="center" cellpadding="2" cellspacing="2">
                  <?php 
				$Cnt=0;
				$sqlD=mysql_query("SELECT * FROM proddetails ORDER BY PDId DESC");
				while ($dtD=mysql_fetch_array($sqlD))
				{
				  if ($Cnt=='') $Cnt=1; else $Cnt=$Cnt;
			?>
                  <tr>
                    <td width="9%" style="border-bottom:#CCCCCC 1px dashed"><div align="center"><?php echo $Cnt; ?></div></td>
                    <td width="70%" style="border-bottom:#CCCCCC 1px dashed"><?php echo substr($dtD['LoanPurpose'],0,200).' &raquo; ';?> </td>
                    <td width="21%" style="border-bottom:#CCCCCC 1px dashed"><div align="center"><a href="EditLPDetail.php?PDId=<?php echo $dtD['PDId'];?>" class="top">&#2474;&#2480;&#2495;&#2478;&#2494;&#2480;&#2509;&#2460;&#2472; </a> || <a href="DeleteLoan.php?PDId=<?php echo $dtD['PDId'];?>" class="top" onclick="return confirm('Are You Sure to Delete!???')">&#2478;&#2497;&#2459;&#2497;&#2472;</a> </div></td>
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
