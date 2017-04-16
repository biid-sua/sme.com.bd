<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

$Menu=$_GET[Id]; //echo $Menu;

if  ($Menu==1) $Title="তথ্য ও পরামর্শ";
elseif  ($Menu==2) $Title="ঋণ";
elseif  ($Menu==3) $Title="যোগাযোগের ঠিকানা";
else $Title="লিংক পাতা";

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Administration Page</title>
<link href="../css/mynul_bng.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="rte/editor.js" type="text/javascript"></script>
<style type="text/css">
<!--
.style3 {font-size: 24px}
-->
</style>
</head>

<body>
<table width="750" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border:#999999 1px solid">
  <tr>
    <td><? require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td><hr /></td>
  </tr>
  <tr>
    <td><table width="744" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="100%" cellspacing="0" cellpadding="0">
          <tr>
            <td width="25%" style="border-right:#CCCCCC 1px solid">&nbsp;</td>
            <td><table width="99%" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="50%"><h3>পণ্য সমূহ</h3></td>
                <td width="50%"><div align="right"><a href="AddOnlineProduct.php" class="menu-link">পণ্য যোগ</a></div></td>
              </tr>
              <tr>
                <td colspan="2">&nbsp;</td>
                </tr>
              <?php 
				$sql=mysql_query("SELECT * FROM omp ORDER BY ProductId DESC");
				while ($dtProd=mysql_fetch_array($sql)) 
				{
			 ?>
              <tr>
                <td colspan="2"><table width="100%" cellspacing="2" cellpadding="2">
                  <tr>
                    <td width="75%" style="border-bottom:#CCCCCC 1px solid"><a class="menu-link" href="ProductDetails.php?ProductId=<?=$dtProd['ProductId'];?>">
                      <?=$dtProd['Product'];?>
                    </a></td>
                    <td width="25%" style="border-bottom:#CCCCCC 1px solid"> <div align="center"><a class="menu-link" href="EditProduct.php?ProductId=<?=$dtProd['ProductId'];?>">পরিমার্জণ</a> || <a class="menu-link" href="DeleteProduct.php?ProductId=<?=$dtProd['ProductId'];?>" onClick="return confirm('Are u Sure to Delete ???')">মুছুন</a> </div></td>
                    </tr>
                </table>                  
                  <a class="menu-link" href="ProductDetails.php?ProductId=<?=$dtProd['ProductId'];?>"></a></td>
              </tr>
              <? } ?>
              <tr>
                <td colspan="2">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><? require_once('footer.php'); ?></td>
  </tr>
</table>
</body>
</html>
