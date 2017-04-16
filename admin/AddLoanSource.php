<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

//---------------------------Insert Category--------------------------------
if (isset($_POST['AddCat'])) 
 {
	$LCatName=$_POST['LCatName'];

	$result=mysql_query("SELECT * FROM lcategory WHERE LCatName='$LCatName'")
		or die ("Can't execute query"); 
		$row = mysql_fetch_array($result);
		$num = mysql_num_rows($result); 
		//echo $num;
	
			if ($num < 1)
				{
					
					$query = "INSERT INTO lcategory (LCatName) VALUES ('$LCatName')";
					mysql_query ($query) or die (mysql_error());
					echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
					echo ("<script>window.location='AddLoanSource.php';</script>");
					exit;
				} 
			else
				{ 
					echo ("<script>window.alert('Data Exists!! Try Different Data.');</script>");
					echo ("<script>window.location='AddLoanSource.php';</script>");
					exit;
				}
 }
//-----------------------------ENDS--------------------------------------
$Lsql="SELECT * FROM lcategory";
$Lresult=mysql_query($Lsql);
$Lnum=mysql_num_rows($Lresult); //echo $num //TOTAL CATEGORY;
//-----------------------Insert Division--------------------------------------
if (isset($_POST['SubmitDiv'])) 
{
$divName=$_POST[divName];
		
//echo $Division; exit;

	$result=mysql_query("SELECT * FROM division WHERE divName='$divName'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='AddLoanSource.php';</script>");	
		}
	else
	{
	$result=mysql_query("INSERT INTO division (divName) VALUES ('$divName')"); //print $sql; 
	echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
	echo ("<script>window.location='AddLoanSource.php';</script>");	
	}
}
//-----------------------Insert District--------------------------------------
if (isset($_POST['SubmitDist']))
{
$DivId=$_POST[DivId];
$District=$_POST[District];
		
//echo $District; exit;

	$result=mysql_query("SELECT * FROM district WHERE District='$District'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='AddAddressLine.php';</script>");	
		}
	else
	{
	$result=mysql_query("INSERT INTO district (District, DivId) VALUES ('$District', '$DivId')"); //print $sql; 
	echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
	echo ("<script>window.location='AddDistrict.php';</script>");	
	}
}
//-----------------------Insert Thana--------------------------------------

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
        <td width="20%" valign="top" style="border-right:#CCCCCC 1px solid"><?php include('LeftMenu.php');?></td>
        <td width="79%" valign="top"><table width="99%" border="0" align="center" cellpadding="2" cellspacing="2">
          <tr>
            <td valign="top" class="mainpadding"><h4>Category </h4></td>
          </tr>
          <tr>
            <td><form id="form1" name="form1" method="post" action="">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="20%"><div align="right" class="ENGTD">Loan Category : &nbsp; </div></td>
                  <td width="39%"><input name="LCatName" type="text" id="LCatName" size="30" /></td>
                  <td width="41%"><input name="AddCat" type="submit" id="AddCat" value="যোগ করুন" onclick="return Empty_field('LCatName','AddLoanSource.php')" /></td>
                </tr>
              </table>
                        </form>            </td>
          </tr>
          <tr>
            <td><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="425" class="Marquee">&nbsp;</td>
                <td width="175" class="ENGTD">Total Loan Category # <?php echo $Lnum; ?> </td>
              </tr>

            </table></td>
          </tr>
          <tr>
            <td><?php 
			  		$Lsql="SELECT * FROM lcategory ORDER BY LCatName ASC";
					$Lresult=mysql_query($Lsql);
					$Lnum=mysql_num_rows($Lresult); //echo $num;
					if ($Lnum<1)
						{
							echo 'No item to show!';
						}
					else
						{	
							while($row=mysql_fetch_array($Lresult))
							{
								$LCatId=$row['LCatId'];
								$LCatName=$row['LCatName'];

			    ?>
              <table width="80%" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="75%" style="border-bottom:#CCCCCC 1px dashed">&nbsp;<img src="../images/orangecircle.gif" width="10" height="10" align="absmiddle" /><font color="#666666"> <?php echo $LCatName; ?></font></td>
                  <td width="25%" style="border-bottom:#CCCCCC 1px dashed"><div align="center"><a href="EditLCategory.php?LCatId=<?php echo $LCatId;?>" class="top">পরিমার্জন </a> || <a href="DeleteLoan.php?LCatId=<?php echo $LCatId;?>" class="top" onclick="return confirm('Are You Sure to Delete!???')">মুছুন</a> </div></td>
                </tr>
              </table>
              <?php } } ?></td>
          </tr>
          <tr>
            <td><h4>Division</h4></td>
          </tr>
          <tr>
            <td><form id="form1" name="form1" method="post" action="">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="20%"><div align="right" class="ENGTD">Division : &nbsp;</div></td>
                  <td width="39%"><input name="Division" type="text" id="Division" size="30" /></td>
                  <td width="41%"><div align="left">
                    <input name="SubmitDiv" type="submit" class="style76" id="SubmitDiv" onclick="return Empty_field('Division','AddLoanSource.php')" value="যোগ করুন" />
                  </div></td>
                </tr>
              </table>
            </form></td>
          </tr>
          <tr>
            <td><table width="60%" border="0" align="center" cellpadding="2" cellspacing="5">
              <?php 
			   	$rsdiv=mysql_query("SELECT * FROM division");
				while ($dtdiv=mysql_fetch_array($rsdiv))
				{
			   ?>
              <tr>
                <td width="33%" style="border-bottom:#006600 1px dashed"><div align="right"><?php echo $dtdiv['DivName'];?><span style="border-bottom:#CCCCCC 1px dashed"> <img src="../images/orangecircle.gif" width="10" height="10" hspace="5" align="absmiddle" /></span></div></td>
                <td width="67%" style="border-bottom:#006600 1px dashed"><a href="EditDivision.php?DivId=<?php echo $dtdiv['DivId'];?>" class="top">পরিমার্জন </a> | <a href="DeleteAddressLine.php?DivId=<?php echo $dtdiv['DivId'];?>" class="top" onclick="return confirm('Are You Sure to Delete!???')">মুছুন</a></td>
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
    <td><?php require_once('footer.php'); ?></td>
  </tr>
</table>
</body>
</html>
