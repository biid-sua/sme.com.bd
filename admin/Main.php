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
<title>Administration Page of MCC</title>
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
    <td><?php require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td><hr /></td>
  </tr>
  <tr>
    <td class="mainpadding"><table width="744" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="tdAdmin"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="3">
          <tr>
            <td><h3><span class="PageTitle"><?=$Title; ?></span></h3></td>
          </tr>
          <tr>
            <td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="80%">&nbsp;</td>
                <td width="20%"><div align="center"><a href="AddMain.php" class="ENGTD">Add</a></div></td>
              </tr>
            </table>
			<?php 
					if ($Menu!=100) {
					$sql="SELECT * FROM main WHERE Menu='$Menu'";
					$result=mysql_query($sql);
					$num=mysql_num_rows($result); //echo $num;
					if ($num<1)
						{
							echo 'No item to show!';
						}
					else
						{	
							while($row=mysql_fetch_array($result))
							{
								$Id=$row['Id'];
								$Details=$row['Details'];

			    ?>
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="87%" align="left"><font color="#666666"><?php echo $Details; ?></font></td>
                <td width="6%" align="left" class="ENGTD"><div align="center"><a href="DeleteMainDetails.php?Id=<?php echo $Id; ?>" onclick="return confirm('Are u Sure to Delete ???')">Delete</a></div></td>
                <td width="7%" class="ENGTD"><div align="center">|| <a href="EditMain.php?Id=<?php echo $Id; ?>">Update</a></div></td>
              </tr>
            </table>
			   <?php } } } 
			 else {
 
					$sql="SELECT * FROM main WHERE Menu='$Menu' ORDER BY Id DESC";
					$result=mysql_query($sql);
					$num=mysql_num_rows($result); //echo $num;
					if ($num<1)
						{
							echo 'No Item to show!';
						}
					else
						{	
							while($row=mysql_fetch_array($result))
							{
								$Id=$row['Id'];
								$Details=strip_tags($row['Details'],'<p><br><h><a><table>');
								$Details=substr($Details, 0, 100);
			    ?>
			 <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
               <tr>
                 <td width="82%" align="left"><font color="#666666"><?php echo $Details; ?> , <a href="XtraDetails.php?Id=<?php echo $Id; ?>">more</a></font></td>
                 </tr>
               <tr>
                 <td align="left"><hr /></td>
               </tr>
               <tr>
                 <td align="left">&nbsp;</td>
               </tr>
             </table>
			 <?php } } } ?></td>
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
