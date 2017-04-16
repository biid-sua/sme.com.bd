<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

//-----------------------Insert Institute/Org/Shop Information--------------------------------------	
if (isset($_POST[JoinDirSvc]))
{
$CatId=$_POST[CatId];
$DistId=$_POST[DistId];
$Company=$_POST[Company];
$Address=$_POST[Address];
$Phone=$_POST[Phone];
$Fax=$_POST[Fax];
$Email=$_POST[Email];
$Web=$_POST[Web];
$SpecialNote=$_POST[SpecialNote];
$Date=date('Y-m-d');

	$result=mysql_query("SELECT * FROM directory WHERE CatId='$CatId' AND DistId='$DistId' AND Company='$Company' AND Address='$Address' AND Phone='$Phone' AND Fax='$Fax' AND Email='$Email' AND Web='$Web' AND SpecialNote='$SpecialNote'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='AddDirSvc.php';</script>");	
		}
	else
	{
	$result=mysql_query("INSERT INTO directory (CatId, DistId, Company, Address, Phone, Fax, Email, Web, SpecialNote, Date) VALUES ('$CatId', '$DistId', '$Company', '$Address', '$Phone', '$Fax', '$Email', '$Web', '$SpecialNote', '$Date')"); 
	echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
	echo ("<script>window.location='DirSvc.php';</script>");	
	}
}	
//-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administration Page.</title>
<link href="../css/mynul.css" rel="stylesheet" type="text/css" />
<script src="../Script/jvalid.js" type="text/javascript"></script>
</head>

<body>
<table width="888" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border:#999999 1px solid">
  <tr>
    <td style="border-bottom:#CCCCCC 1px solid; padding-bottom:5px"><? require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td valign="top" class="mainpadding"><table width="100%" border="0" cellspacing="1" cellpadding="2">
      <tr>
        <td width="25%" style="border-right:#CCCCCC 1px solid">&nbsp;</td>
        <td width="75%"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="mainpadding"><h3>Add 2 Directory</h3>
                <form id="form1" name="form1" method="post" action="" onSubmit="return validemail()">
                  <table width="100%" border="0" cellspacing="1" cellpadding="2">
                    <tr>
                      <td><div align="right">Category</div></td>
                      <td><div align="center">:</div></td>
                      <td><select name="CatId" id="CatId">
                        <option value="">---Select---</option>
                        <?php
						$rsCat=mysql_query("SELECT * FROM category ORDER BY CatId ASC");
						while ($dtCat=mysql_fetch_array($rsCat))
						{
					?>
                        <option value="<?=$dtCat['CatId'];?>">
                        <?=$dtCat['CatName'];?>
                        </option>
                        <? } ?>
                      </select>   
                        * <a href="Category.php">Add Category</a></td>
                    </tr>
                    <tr>
                      <td><div align="right">Location</div></td>
                      <td><div align="center">:</div></td>
                      <td><select name="DistId" id="DistId">
                        <option value="">---Select---</option>
                        <?php
						$rsdist=mysql_query("SELECT * FROM district ORDER BY DistId ASC");
						while ($dtdist=mysql_fetch_array($rsdist))
						{
					?>
                        <option value="<?=$dtdist['DistId'];?>">
                        <?=$dtdist['DistName'];?>
                        </option>
                        <? } ?>
                      </select>                        
                        * <a href="Location.php">Add Location</a></td>
                    </tr>
                    <tr>
                      <td width="29%"><div align="right">Company/Organization Name</div></td>
                      <td width="2%"><div align="center">:</div></td>
                      <td width="69%"><input name="Company" type="text" class="text" id="Company" size="30" />
                        *</td>
                    </tr>
                    <tr>
                      <td><div align="right"> Address</div></td>
                      <td><div align="center">:</div></td>
                      <td><textarea name="Address" cols="45" rows="5" class="text" id="Address"></textarea>
                        *</td>
                    </tr>
                    <tr>
                      <td><div align="right">Contact No</div></td>
                      <td><div align="center">:</div></td>
                      <td><input name="Phone" type="text" class="text" id="Phone" size="30" />
                        *</td>
                    </tr>
                    <tr>
                      <td><div align="right">Fax</div></td>
                      <td><div align="center">:</div></td>
                      <td><input name="Fax" type="text" class="text" id="Fax" size="30" /></td>
                    </tr>
                    <tr>
                      <td><div align="right">E-Mail</div></td>
                      <td><div align="center">:</div></td>
                      <td><input name="Email" type="text" class="text" id="Email" size="30" />
                      *</td>
                    </tr>
                    <tr>
                      <td><div align="right">Web</div></td>
                      <td><div align="center">:</div></td>
                      <td><input name="Web" type="text" class="text" id="Web" size="30" /></td>
                    </tr>
                    <tr>
                      <td><div align="right">Special Note</div></td>
                      <td><div align="center">:</div></td>
                      <td><textarea name="SpecialNote" cols="45" rows="5" class="text" id="SpecialNote"></textarea></td>
                    </tr>
                    <tr>
                      <td><div align="right"></div></td>
                      <td><div align="center"></div></td>
                      <td><input name="JoinDirSvc" type="submit" class="style76" id="JoinDirSvc" onclick="return Empty_field('CatId,DistId,Company,Address,Phone,Email','AddDirSvc.php')" value="Join Now!" /></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td class="copyright">* Marked fields are must!</td>
                    </tr>
                  </table>
                </form></td>
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
