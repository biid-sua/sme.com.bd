<?php
require_once("antihack.php");
require_once($adminsecuritycheck);
require_once($includepath."pagenav.php");

if(empty($_GET['event']))
{

if(empty($_GET['p']))
	$ppage = 1;
else
	$ppage = $_GET['p'];
	
if(empty($_GET['count']))
	$pcount = 10;
else
	$pcount = $_GET['count'];

$limit = "LIMIT ".(($ppage-1)*$pcount).", ".$pcount;

$qry = "SELECT * FROM ".$db_prefix."orders ORDER BY id DESC";
$res = mysql_query($qry." ".$limit);
?>
<p class="heading" style="margin-left:20px;">
Manage Orders</p>
<table border="1" cellspacing="0" cellpadding="5" width="95%" class="bordered" align="center">
	<tr class="light_bg">
		<th align="left" style="padding:5px 10px 5px 10px">Username</th>
		<th style="padding:5px 10px 5px 10px">Date</th>
		<th style="padding:5px 10px 5px 10px">Status</th>
		<!-- th style=";border-right:1px solid #cccccc">Sort Order</th --><th style="">Manage</th>
	</tr>
	<?php if(mysql_num_rows($res) > 0){
		while($rs = mysql_fetch_assoc($res)){?>
	<tr>
		<td align="cent" style="padding:5px 10px 5px 10px">
			<?php 
			$qryuser = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs['uid'];
			$resuser = mysql_query($qryuser);
			$rsuser = mysql_fetch_assoc($resuser);
			echo $rsuser['uname'];
			?>
		</td>
		<!-- td align="center" style="">
			<?php echo $rs['cat_order'];?>
		</td -->
		<td align="center" style="">
			<?php echo date("j M, Y", strtotime($rs['odate']));?>
		</td>
		<td align="center" style="">
			<?php echo ($rs['viewed']==1? 'Viewed':'<span style="color:red">Waiting</span>');?>
		</td>
		<td align="center">
			<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_orders&event=vieworder&order_id=<?php echo $rs['id'];?>">View</a>
			&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
			<a href="javascript:if(confirm('Are you sure want to delete this order information?')){location='<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_orders&event=delorder&order_id=<?php echo $rs['id'];?>'}">Delete</a>
		</td>
	</tr>
	<?php }}?>
	<tr>
		<td colspan="4" align="left">
		<div style="float:left"><?php echo PageNav($qry, $pcount, $ppage, 'admincp.php?detail=manage_orders');?></div>
		</td>
	</tr>
</table>
<?php
}
elseif($_GET['event'] == 'vieworder')
{
	$orderid = $_GET['order_id'];
	@mysql_query("UPDATE ".$db_prefix."orders SET viewed=1 WHERE id=".$orderid);
?>
<p class="heading" style="margin-left:20px;"> Order Detail
</p>
<?php
$qry1 = "SELECT * FROM ".$db_prefix."orders WHERE id=".$orderid;
$res1 = mysql_query($qry1);
$rs1 = mysql_fetch_assoc($res1);

$qryuser = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs1['uid'];
$resuser = mysql_query($qryuser);
$rsuser = mysql_fetch_assoc($resuser);
?>
<br>
<div style='margin-left:20px;'>Product Ordered By: <b><?php echo $rsuser['uname'];?></b><br>
Order Date: <?php echo date("j M, F", strtotime($rs1['odate']));?>
</div>
<br>
<table border="1" cellspacing="0" cellpadding="5" class="bordered" style="margin-left:20px; ">
  <tr class="light_bg">
    <th>Product</th>
    <th>Quantity</th>
    <th>Price</th>
    <th>Total</th>
  </tr>
	<?php 
	$orders = explode(",", $rs1['orders']);
	foreach($orders as $orderitem)
	{
		$properties = explode(":", $orderitem);
		$qry = "SELECT * FROM ".$db_prefix."prods WHERE id=".$properties[0];
		$res = mysql_query($qry);
		$rs = mysql_fetch_assoc($res);
	?>
  <tr>
    <td><?php echo $rs['prod_name'];?></td>
    <td align="center"><?php echo $properties[1];?></td>
    <td align="center"><?php echo (empty($rs['price'])? 'N/A':$rs['price']);?></td>
    <td align="center"><?php echo (empty($rs['price'])? 'N/A':intval($rs['price'])*intval($properties[1]));?></td>
  </tr>
	<?php }?>
  <tr>
    <td colspan="4" align="right"><input type="button" value="Go Back" class="button" onClick="location='admincp.php?detail=manage_orders'"></td>
  </tr>
</table>
<?php
}
elseif($_GET['event'] == 'delorder')
{
	$order_id = $_GET['order_id'];
	$qry = "DELETE FROM ".$db_prefix."orders WHERE id=$order_id";
	mysql_query($qry);
	header("location: ".$_SERVER['PHP_SELF']."?detail=manage_orders");
}
?>