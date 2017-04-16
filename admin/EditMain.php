<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

if (isset($_POST['UpdateInfo']))
{
	$Id=$_POST[Id];
	$Menu=$_POST[Menu];
	$Details=$_POST[editor1_content];
	$Details=preg_replace('`[\r\n]`','',$Details);
	$Status=$_POST[Status];
	//---------------------------------------------------------------------------------------------------------------------------------
					mysql_query("UPDATE main SET Menu='$Menu', Details='$Details', Status='$Status' WHERE Id='$Id'");
					$result=mysql_query($query);				
//---------------------------------------------------------------------------------------------------------------------------------				
					echo ("<script>window.alert('Data Update Successfully!!!');</script>");
					echo ("<script>window.location='Welcome.php';</script>");	
}

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
    <td><?php require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td><hr /></td>
  </tr>
  <tr>
    <td class="mainpadding"><table width="744" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="tdAdmin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        	<?php 
				$Id=$_GET[Id];
				
				$sql="SELECT * FROM main WHERE Id='$Id'";
				$result=mysql_query($sql);
				$row=mysql_fetch_array($result);
				$Id=$row['Id'];
				$Menu=$row['Menu'];
				$Details=$row['Details'];
				$content=$Details;
				$content=addslashes(preg_replace('`[\r\n]`','',$content));
				$Status=$row['Status'];
			?>
          <tr>
            <td class="mainpadding">
			<form id="Main" name="Main" method="post" action="EditMain.php" onsubmit="editor1.prepareSubmit()">
              <table width="650" border="0" align="center" cellpadding="3" cellspacing="3">
                <tr>
                  <td colspan="3"><h3>তথ্য পরিমার্জণ  </h3></td>
                  </tr>
                <tr>
                  <td width="94"><div align="right">নির্বাচন করুন </div></td>
                  <td width="6"><div align="center">:</div></td>
                  <td width="520"><label>
                  <select name="Menu" class="bansml" id="Menu">
                    <option value="" selected="selected" > নির্বাচন করুন </option>
                    <option value="1" <?php if($Menu == 1) echo "SELECTED";?>>তথ্য ও পরামর্শ</option>
                    <option value="2" <?php if($Menu == 2) echo "SELECTED";?>>- ঋণ -</option>
                    <option value="3" <?php if($Menu == 3) echo "SELECTED";?>>যোগাযোগের ঠিকানা</option>
                    <option value="100" <?php if($Menu == 100) echo "SELECTED";?>> লিংক পাতা </option>
                  </select>
                  </label></td>
                </tr>
                <tr>
                  <td><div align="right">মূল তথ্য </div></td>
                  <td><div align="center">:</div></td>
                  <td><p align="center">
                        <script type="text/javascript">
							var editor1 = new WYSIWYG_Editor('editor1','<?php print $content;?>');
							editor1.display();
						</script>
                      </p>				  </td>
                </tr>
                <tr>
                  <td><div align="right">অবস্থা</div></td>
                  <td><div align="center">:</div></td>
                  <td><select name="Status" class="bansml" id="Status">
                    <option value="" selected="selected"> নির্বাচন করুন </option>
                    <option value="1" <?php if($Status == 1) echo "SELECTED";?>>অপ্রকাশিত</option>
                    <option value="2" <?php if($Status == 2) echo "SELECTED";?>>প্রকাশিত</option>
                  </select></td>
                </tr>
                <tr>
                  <td colspan="3" align="center">
                    <input name="Id" type="hidden" id="Id" value="<?php echo $_GET[Id]; ?>" />
                    <input name="UpdateInfo" type="submit" class="button" value="তথ্য পরিমার্জণ করুন" id="UpdateInfo" />
                  </td>
                  </tr>
              </table>
                  </form>
            </td>
          </tr>
          <tr>
            <td>
              <table width="740" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td align="center"></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
              </table>				</td>
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
