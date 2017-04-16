<?php
session_start();

if($_GET['remote'] != 'ajax')
	require_once("antihack.php");

$sitebase = "../";
require_once($sitebase."admin/config.php");
//require_once($usersecuritycheck);
require_once($mainconn);

if($_GET['action'] == 'additem' && !empty($_GET['itemid']))
{
	session_register("SHC_Cookie");

	//if(empty($_SESSION['uid']) || empty($_SESSION['uname']) || empty($_SESSION['ugroup']) || $_SESSION['ugroup'] != 2)
		//die('failed');
		
	$itemcount = $_GET['itemcount'];
	$mycart = Array();
	$mycartarray = $_SESSION['SHC_Cookie'];
	if(trim(str_replace(",","",$mycartarray)) != '')
		$mycart = explode(",", $mycartarray);

	$found = 0;
	$itemindex = 0;
	for($i=0; $i<count($mycart); $i++)
	{
		$properties = explode(":",$mycart[$i]);
		if(trim($properties[0]) == $_GET['itemid'])
		{
			$found = 1;
			$itemindex = $i;
			break;
		}
	}

	if($found == 0)
	{
		if(trim(str_replace(",","",$mycartarray)) == '')
			$mycartarray = $_GET['itemid'].":$itemcount";
		else
			$mycartarray .= ','.$_GET['itemid'].":$itemcount";
	}
	else
	{
		//die('exist');
		if($_GET['setcount'] == 0)
		{
			$properties = explode(":",$mycart[$itemindex]);
			$itemcount = intval($properties[1])+intval($itemcount);
		}
		$mycart[$itemindex] = $_GET['itemid'].":".$itemcount;
		$mycartarray = implode(",", $mycart);
	}
	$_SESSION['SHC_Cookie'] = $mycartarray;
	die('saved');
}

if($_GET['action'] == 'delitem' && !empty($_GET['itemid']))
{
	$mycart = Array();
	$mycartarray = $_SESSION['SHC_Cookie'];
	if(trim(str_replace(",","",$mycartarray)) != '')
		$mycart = explode(",", $mycartarray);
	$found = 0;
	$newarray = '';
	foreach($mycart as $items)
		if(substr_count($items, $_GET['itemid'].":") == 0)
			$newarray .= ','.$items;
	$mycartarray = substr($newarray, 1);
	$_SESSION['SHC_Cookie'] = $mycartarray;
	die('deleted');
}

if($_GET['action'] == 'delall')
{
	$_SESSION['SHC_Cookie'] = "";
	echo "deleted";
}
if($_GET['action']=='preorder'){
?>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" align="left">
	<div style="padding:0px 20px 20px;">
	<?php 
		$sqlp="select * from ".$db_prefix."help where id=2";
		$exep=mysql_query($sqlp);
		$rsp=mysql_fetch_array($exep);
		echo "$rsp[text]";
	?>
	</div>
	</td>
  </tr>
  <tr>
    <td>
	<div style="padding-left:20px;">
	<form name="frmPre" method="post">
	<input type="button" class="button" value="Continue with order" onClick="OrderContinue()">
	</form>
	</div>
	</td>
  </tr>
</table>
<?php 
}
if($_GET['action'] == 'orderprompt')
{
?>
<div id="ordercontent">
<table border="1" cellspacing="0" cellpadding="5" class="bordered" width="90%">
  <tr class="light_bg">
    <th>Product</th>
    <th>Quantity</th>
    <th>Price</th>
    <th>Total</th>
  </tr>
  <?php
	$mycart = Array();
	$mycartarray = $_SESSION['SHC_Cookie'];
	if(trim(str_replace(",","",$mycartarray)) != '')
		$mycart = explode(",", $mycartarray);
		
	foreach($mycart as $items)
	{
		$properties = explode(":", $items);
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
  <?php
  }
  ?>
  <tr>
    <td colspan="4" align="right"><input type="button" value="Confirm Order" class="button" onClick="ConfirmOrder()">&nbsp;&nbsp;<input type="button" value="Order Later" class="button" onClick="CancelOrder()"></td>
  </tr>
</table>
</div>
<br>
<div id="ordermsg"></div>
<?php
}
?>
<script type="text/javascript">
function OrderContinue()
{
	$("#cartcontent").fadeTo(300, 0, function(){
		$("#waiting").fadeTo(300, 1);
		var data = $.ajax({
			url: "includes/cartcp.php?remote=ajax&action=orderprompt",
			async: false
		}).responseText;
		$("#orderconfirm").show().css({opacity:0}).html(data).fadeTo(1000, 1);
		setTimeout(function(){
			$("#waiting").fadeTo(700, 0);
		}, 500);
	});
}
</script>