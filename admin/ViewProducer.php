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
                <td width="50%"><h3>উৎপাদনকারী </h3></td>
                <td width="50%"><div align="right"><a href="AddProducer.php" class="menu-link">উৎপাদনকারী যোগ</a></div></td>
              </tr>
              <tr>
                <td colspan="2">&nbsp;</td>
                </tr>
              <?php 
				//echo "SELECT * FROM producer WHERE Status=3 ORDER BY ProducerId DESC"; exit;
				$sqlProducer=mysql_query("SELECT * FROM producer ORDER BY ProducerId DESC");
				while ($dtProducer=mysql_fetch_array($sqlProducer))
				{
			  ?>
              <tr>
                <td colspan="2"><table width="100%" cellspacing="2" cellpadding="2">
                  <tr>
                    <td width="75%" style="border-bottom:#CCCCCC 1px solid"><a class="menu-link" href="ProducerDetails.php?ProducerId=<?=$dtProducer['ProducerId'];?>">
                      <?=$dtProducer['Producer'];?>
                    </a></td>
                    <td width="25%" style="border-bottom:#CCCCCC 1px solid"> <div align="center"><a class="menu-link" href="EditProducer.php?ProducerId=<?=$dtProducer['ProducerId'];?>">পরিমার্জণ</a> || <a class="menu-link" href="DeleteProducer.php?ProducerId=<?=$dtProducer['ProducerId'];?>" onClick="return confirm('Are u Sure to Delete ???')">মুছুন</a> </div></td>
                    </tr>
                </table>                  
               </td>
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
