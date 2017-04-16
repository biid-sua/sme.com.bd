<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Administration Page</title>
<link href="../css/mynul.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="rte/editor.js" type="text/javascript"></script>
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
    <td valign="top" class="mainpadding"><table width="744" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top" class="tdAdmin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td valign="top" class="mainpadding"><h3>X-tra Details</h3>
              <p align="justify">
                <?php 
					$sql="SELECT * FROM main WHERE Id='$_GET[Id]'";
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
</p>
              <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="86%" align="left"><font color="#666666"><?php echo $Details; ?></font></td>
                  <td width="7%" align="left" class="bantext"><div align="right"><a href="DeleteMainDetails.php?Id=<?php echo $Id; ?>" onclick="return confirm('Are u Sure to Delete ???')">Delete</a></div></td>
                  <td width="7%" class="bantext">|| <a href="EditMain.php?Id=<?php echo $Id; ?>">Update</a></td>
                </tr>
              </table>
              <p>
                <?php } } ?>
              </p>
              <p><span class="copyright">Link:</span> <?php echo 'http://'.$_SERVER['SERVER_NAME']."/XtraDetails.php?Id=$Id"; ?></p></td>
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
