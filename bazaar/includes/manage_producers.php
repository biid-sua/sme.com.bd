<?php
session_start();
require_once("antihack.php");
require_once($adminsecuritycheck);

if(isset($_POST['submit']))
{
	mysql_query("UPDATE ".$db_prefix."userinfo SET featured=0");
	mysql_query("UPDATE ".$db_prefix."userinfo SET featured=1 WHERE id=".$_POST['featured']);
}
?>
<script type="text/javascript">
function chkForm(form)
{
	if(form.featured.value == '')
	{
		alert('Please select a producer first.');
		return false;
	}
	else
		return true;
}
</script>
<p class="heading" style="margin-left:20px;">
<div style="width:95%;margin-left:25px">
<div style="float:left">Select Producer of the Week</div>
<br><br>
<div style="border-top:1px dashed #cccccc;padding-top:10px;"></div>
</div>
</p>
<div style="margin-left:25px;">
<form action="" method="post" onSubmit="return chkForm(this)">
<span class="heading">Producer of the week:</span>&nbsp;&nbsp;
<?php
$qry = "SELECT * FROM ".$db_prefix."userinfo WHERE featured=1";
$res = mysql_query($qry);
if(mysql_num_rows($res) > 0)
{
	$rs = mysql_fetch_assoc($res);
	echo $rs['uname'];
}
else
	echo "N/A";
?>
<br><br>
<select name="featured">
	<option value="">Select a producer</option>
	<?php
	$qry = "SELECT DISTINCT uid FROM ".$db_prefix."prods WHERE uid<>99999";
	$res = mysql_query($qry);
	while($rs = mysql_fetch_assoc($res))
	{
		$qry2 = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs['uid'];
		$res2 = mysql_query($qry2);
		$rs2 = mysql_fetch_assoc($res2);
		echo '<option value="'.$rs2['id'].'">'.$rs2['uname'].'</option>';
	}
	?>
</select>&nbsp;&nbsp;
<input type="submit" name="submit" value="Set as featured producer">
</form>
</div>