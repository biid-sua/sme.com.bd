<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

//---------------------------Insert Category--------------------------------
if (isset($_POST['EditLoanSrc'])) 
 {
		$query = "UPDATE lsource SET LSrcName='$_POST[LSrcName]' WHERE LSrcId='$_POST[LSrcId]'";
		mysql_query ($query) or die (mysql_error());
		echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
		echo ("<script>window.location='LoanSource.php';</script>");
		exit;
	} 
//-----------------------------ENDS--------------------------------------
$Lsql="SELECT * FROM lsource";
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
    <td style="border-bottom:#CCCCCC 1px solid; padding-bottom:5px"><?php require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td valign="top" class="mainpadding"><table width="100%" border="0" cellspacing="1" cellpadding="2">
      <tr>
        <td width="21%" valign="top" style="border-right:#CCCCCC 1px solid"><?php include('LeftMenu.php');?></td>
        <td width="79%" valign="top"><table width="99%" border="0" align="center" cellpadding="2" cellspacing="2">
          <tr>
            <td valign="top" class="mainpadding"><h4>Edit Source </h4></td>
          </tr>
          <tr>
            <td><form id="form1" name="form1" method="post" action="">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
			  	<?php 
			  		$Lsql="SELECT * FROM lsource WHERE LSrcId='$_GET[LSrcId]'";
					$Lresult=mysql_query($Lsql);
					$row=mysql_fetch_array($Lresult);
					$LSrcId=$row['LSrcId'];
					$LSrcName=$row['LSrcName'];
			    ?>
                <tr>
                  <td width="20%"><div align="right" class="ENGTD">Loan Source : &nbsp; </div></td>
                  <td width="39%"><input name="LSrcName" type="text" id="LSrcName" value="<?php echo $LSrcName; ?>" size="30" /></td>
                  <td width="41%"><input name="EditLoanSrc" type="submit" id="EditLoanSrc" value="যোগ করুন" onclick="return Empty_field('LSrcName','EditLSrc.php')" />
                    <input name="LSrcId" type="hidden" id="LSrcId" value="<?php echo $LSrcId; ?>" /></td>
                </tr>
              </table>
                        </form>            </td>
          </tr>
          <tr>
            <td><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="425" class="Marquee">&nbsp;</td>
                <td width="175" class="ENGTD">Total Loan Source # <?php echo $Lnum; ?> </td>
              </tr>

            </table></td>
          </tr>
          <tr>
            <td><?php 
			  		$Lsql="SELECT * FROM lsource ORDER BY LSrcName ASC";
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
								$LSrcId=$row['LSrcId'];
								$LSrcName=$row['LSrcName'];

			    ?>
              <table width="80%" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="75%" style="border-bottom:#CCCCCC 1px dashed">&nbsp;<img src="../images/orangecircle.gif" width="10" height="10" align="absmiddle" /><font color="#666666"> <?php echo $LSrcName; ?></font></td>
                  <td width="25%" style="border-bottom:#CCCCCC 1px dashed"><div align="center"><a href="EditLSrc.php?LSrcId=<?php echo $LSrcId;?>" class="top">পরিমার্জন </a> || <a href="DeleteLoan.php?LSrcId=<?php echo $LSrcId;?>" class="top" onclick="return confirm('Are You Sure to Delete!???')">মুছুন</a> </div></td>
                </tr>
              </table>
              <?php } } ?></td>
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
