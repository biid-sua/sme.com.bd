<?php
require_once("antihack.php");
?>
<p>
<table border="0" cellspacing="0" cellpadding="8" width="400" style="margin-left:20px;">
	<tr>
		<td style="border:1px solid #cccccc;border-bottom:0" width="120" align="center"><span class="heading">Welcome Admin</span></td><td valign="bottom" style="padding:0px 0px 0px 0px;" width="280"><div style="width:100%;border-bottom:1px solid #cccccc"></div></td>
	</tr>
	<tr>
		<td colspan="2" style="border:1px solid #cccccc;border-top:0;padding:8px 8px 8px 8px">
			<div class="light_bg" style="padding:3px 0px 3px 15px;left:0">Pick a task below:</div>
			<ul style="list-style-type:square;line-height:20px;padding-left:50px;">
				<li>&nbsp;&nbsp;<a href="admincp.php?detail=manage_category">Manage Categories</a></li>
				<li>&nbsp;&nbsp;<a href="admincp.php?detail=manage_products">Manage Products</a></li>
				<li>&nbsp;&nbsp;<a href="admincp.php?detail=manage_products&event=addproduct">Add New Product</a></li>
				<li>&nbsp;&nbsp;<a href="../">Home</a></li>
				<li>&nbsp;&nbsp;<a href="javascript:if(confirm('Are you sure want to logout from control panel?')){location='../logout.php';}">Logout</a></li>
			</ul>
		</td>
	</tr>
</table>
<br><br>
<?php
$qryp = "SELECT * FROM ".$db_prefix."orders WHERE viewed=0";
$resp = mysql_query($qryp);
$pnum = mysql_num_rows($resp);
if($pnum > 0){
?>
<table class="light_bg" border="0" cellpadding="5" cellspacing="0" style="border:1px solid green;margin-left:20px;">
	<tr>
		<td valign="middle" style="border:0"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_orders" style="color:#006600">You Have (<?php echo $pnum;?>) new orders waiting for review</a></td>
	</tr>
</table>
<?php }?>
<br>
<?php
$qryp = "SELECT * FROM ".$db_prefix."prods WHERE allowed=0";
$resp = mysql_query($qryp);
$pnum = mysql_num_rows($resp);
if($pnum > 0){
?>
<table style="margin-left:20px;border:1px solid red;background-color:#FFFFCC" cellpadding="5">
	<tr>
		<td valign="middle"><img src="<?php echo $imagepath;?>warning.gif" width="20"></td>
		<td valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=allowproduct<?php if(!empty($_GET['cat_id'])){echo "&prod_cat=".$_GET['cat_id'];}?>" style="color:red">You have (<?php echo $pnum;?>) Products waiting for permission</a></td>
	</tr>
</table>
<?php }?>
</p>