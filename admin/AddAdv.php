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
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administration Page.</title>
<link href="../css/mynul_bng.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="rte/editor.js" type="text/javascript"></script>
<style type="text/css">
<!--
.style6 {color: #666666}
.style98 {color: #FF0000}
-->
</style>
</head>

<body>
<table width="888" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border:#999999 1px solid">
  <tr>
    <td style="border-bottom:#666666 1px solid"><? require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td valign="top" class="mainpadding"><table width="100%" cellspacing="0" cellpadding="0">
      <tr>
        <td width="25%" style="border-right:#999999 1px solid">&nbsp;</td>
        <td width="75%"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="mainpadding"><h3>Add Advertise</h3>
                <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">

                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><form action="InsertAdvertise.php" method="post" enctype="multipart/form-data" name="form1" id="form1" onsubmit="editor1.prepareSubmit()" >
                        <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="style6">
                          <tr>
                            <td width="83" class="bansml">&nbsp;</td>
                            <td width="17">&nbsp;</td>
                            <td width="496">&nbsp;</td>
                            <td width="12">&nbsp;</td>
                          </tr>
                          <tr>
                            <td><p align="left">Add Picture </p></td>
                            <td><div align="center"><strong>:</strong></div></td>
                            <td><input name="photoname" type="file" id="photo2" size="28" /></td>
                            <td valign="middle" class="EngTD">&nbsp;</td>
                          </tr>
                          <tr>
                            <td class="bansml">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><span class="EngTD">Picture Size: (<span class="style98">Width Must be of : 160pixel</span>, height proportional)</span></td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td class="bansml">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>Web Link </td>
                            <td><div align="center">:</div></td>
                            <td><input type="text" name="WebLink" class="EngTD" id="WebLink" onfocus="getIDLAST(this.id)" onkeypress="gdgg(window.event.keyCode)" size="40" wrap="hard" />
                                <br />
                                <span class="EngTD">Please Put Web Link as </span><span class="topmenulink">Format: </span><span class="Formdecoration">http://www.wanitbd.com</span><span class="EngTD"> <br />
                                  (</span><span class="style98">http:// - is Must</span><span class="EngTD">) </span></td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td class="bansml">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>Status</td>
                            <td><div align="center">:</div></td>
                            <td><select name="Status" class="select" id="Status">
                                <option value="0" <?php if($Status == 0) echo "SELECTED";?>>Unpublished</option>
                                <option value="1" <?php if($Status == 1) echo "SELECTED";?>>Published</option>
                            </select></td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><div align="center"><a href="PictureGallery.php"></a> </div></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><input name="Submit" type="submit" class="bansml" id="Submit" value="Add Advertise Now!" /></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table>
                    </form></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><hr /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="Title">Recent Advertise </td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><?php 
			  		$sql="SELECT * FROM advertise ORDER BY AdvId DESC";
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
								$AdvId=$row['AdvId'];
								$Photo=$row['Photo'];
								$WebLink=$row['WebLink'];

			    ?>
                        <table width="85%" border="0" align="center" cellpadding="2" cellspacing="0">
                          <tr>
                            <td width="88%">&nbsp;<img src="../images/bullet_more.gif" width="13" height="12" /><a href="<? echo $WebLink; ?>">
                              <?php 
					  if(!empty($Photo))
					  {
						echo "<img src='$Server/SME/Adv/$Photo' Width='100' vspace='5' hspace='2' align='middle' border='1'>";
					  }
					  else
						echo " "; 
				  ?>
                            </a>&nbsp;&nbsp;<? echo $WebLink; ?></td>
                            <td width="12%"><a href="DeleteAdvertise.php?AdvId=<? echo $AdvId; ?>"  onclick="return confirm('Are u Sure to Delete ???')">DEL</a></td>
                          </tr>
                        </table>
                      <? } } ?></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                </table>
              <p align="justify">&nbsp;</p></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
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
