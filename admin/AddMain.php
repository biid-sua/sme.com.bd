<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
include_once("../dbconnect.php");

if (isset($_POST[AddPages]))
{
	$Menu=$_POST[Menu];
	$Details=$_POST[editor1_content];
	$Status=$_POST[Status];
	//print_r ($Details); echo $Menu; echo $Status; exit; 
											
//-----------------------------------------Insert Into aboutme Table---------------------------------------------------
	mysql_query("INSERT INTO main (Menu, Details, Status) VALUES('$Menu', '$Details', '$Status')");

	echo ("<script>window.alert('Data Inserted Successfully!!!');</script>");
	echo ("<script>window.location='AddMain.php';</script>");	
//--------------------------------------------------------------------------------------------------------------------							
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administration Page.</title>
<link href="../css/mynul_bng.css" rel="stylesheet" type="text/css" />
<script src="../Script/jvalid.js" type="text/javascript"></script>
<script language="javascript" src="rte/editor.js" type="text/javascript"></script>
</head>

<body>
<table width="888" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border:#999999 1px solid">
  <tr>
    <td style="border-bottom:#CCCCCC 1px solid; padding-bottom:5px"><?php require_once('header.php'); ?></td>
  </tr>
  <tr>
    <td width="25%" valign="top" class="mainpadding"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="25%" style="border-right:#CCCCCC 1px solid">&nbsp;</td>
        <td class="mainpadding">
		<form action="" id="form1" name="form1" method="post" onsubmit="editor1.prepareSubmit()">
          <table width="98%" border="0" align="center" cellpadding="3" cellspacing="3">
            <tr>
              <td colspan="3" class="PageTitle"><h3>পোর্টালের পাতা সমূহ</h3></td>
            </tr>
            <tr>
              <td width="99"><div align="right">নির্বাচন করুন </div></td>
              <td width="11"><div align="center">:</div></td>
              <td width="510"><select name="Menu" class="bansml" id="Menu">
                  <option value="" selected="selected" > নির্বাচন করুন </option>
                  <option value="1" <?php if($Menu == 1) echo "SELECTED";?>>তথ্য ও পরামর্শ</option>
                  <option value="2" <?php if($Menu == 2) echo "SELECTED";?>>- ঋণ -</option>
                  <option value="3" <?php if($Menu == 3) echo "SELECTED";?>>যোগাযোগের ঠিকানা</option>
                  <option value="100" <?php if($Menu == 100) echo "SELECTED";?>>  লিংক পাতা  </option>
                </select>
                *              </td>
            </tr>
            <tr>
              <td><div align="right">মূল তথ্য </div></td>
              <td><div align="center">:</div></td>
              <td><p>
                  <script type="text/javascript">
						var editor1 = new WYSIWYG_Editor('editor1');
						editor1.display();
						</script>
              </p></td>
            </tr>
            <tr>
              <td><div align="right">অবস্থা</div></td>
              <td><div align="center">:</div></td>
              <td><select name="Status" class="bansml" id="Status">
			  	  <option value="" selected="selected"> নির্বাচন করুন </option>
                  <option value="1" <?php if($Status == 1) echo "SELECTED";?>>অপ্রকাশিত</option>
                  <option value="2" <?php if($Status == 2) echo "SELECTED";?>>প্রকাশিত</option>
                </select>
                *              </td>
            </tr>
            <tr>
              <td colspan="3"><div align="center">
                  <input name="AddPages" type="submit" id="AddPages" value="তথ্য যোগ" onclick="return Empty_field('Menu,Status','AddMain.php')" />
              </div></td>
            </tr>
            <tr>
              <td colspan="3">&nbsp;</td>
            </tr>
          </table>
        </form></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><?php require_once('footer.php'); ?></td>
  </tr>
</table>
</body>
</html>
