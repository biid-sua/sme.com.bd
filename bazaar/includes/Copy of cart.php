<?php
require_once("antihack.php");

?>
<div id="cartcontent">
<p>
	<div style="height:1px;"></div>
	<?php
	$cart = Array();
	
	$cartarray = $_COOKIE['SHC_Cookie'];
	echo "cart:".$cartarray;
	if(trim(str_replace(",","",$cartarray)) != '')
		$cart = explode(",", $cartarray);
	if(count($cart) > 0){
	?>
	<!-- div id="status"></div -->
	<script type="text/javascript" src="<?php echo $scriptpath;?>cookie.js"></script>
	<script type="text/javascript" src="<?php echo $scriptpath;?>cart.js"></script>
	<script type="text/javascript">
	if (Cookie.test())
		var tmpcart = Cookie.get('SHC_Cookie');
	document.write("cart:"+tmpcart);
	</script>
	<?php
	foreach($cart as $item)
	{
		$qry = "SELECT * FROM ".$db_prefix."products WHERE id=$item";
		$res = mysql_query($qry);
		$rs = mysql_fetch_assoc($res);
	?>
	<div id="div<?php echo $item;?>">
	<div id="div<?php echo $item;?>_1">
	<table border="0" cellspacing="0" cellpadding="0" width="450" style="position:relative;left:15px">
		<tr><td colspan="4" style="padding-bottom:10px">Image Id: <?php echo $rs['image_title'];?></td></tr>
	  <tr>
		<td rowspan="2" width="169" height="169" align="center" valign="top">
			<table border="0" cellpadding="0" cellspacing="0" width="169" height="169" style="border:1px solid #cccccc">
				<tr><td align="center" valign="middle">
                  <a href="<?php echo $_SERVER['PHP_SELF'];?>?event=viewdetail&r=cart&pid=<?php echo $rs['id'];?>"><img src="<?php echo $imgupthumbpath.$rs['image_name'];?>"></a> </td>
				</tr>
			</table>
		</td>
		<td height="153" colspan="2"></td>
	  </tr>
	  <tr>
		<td align="left" valign="bottom" width="10"></td>
	    <td align="left" valign="bottom">
			<table border="0" cellpadding="0" cellspacing="3" align="left" width="100%">
				<!-- tr>
					<?php if($rs['image_high'] == 1){?>
					<td width="20"><input type="checkbox" name="addhcart" title="cart" value="<?php echo $item;?>" class="styled" <?php echo (in_array($item, $hcart)? 'checked' : '');?>></td>
					<td valign="middle">High Res</td>
				    <td valign="middle" align="right">Price: 
					<?php
					if(empty($_GET['c']) || $_GET['c'] == '' || $_GET['c'] == 'usd')
						echo '$'.$rs['usd_high'];
					else
						echo 'BDT '.$rs['bdt_high'];
					?>
					</td>
					<?php }else{?>
					<td colspan="3" height="25">&nbsp;</td>
					<?php }?>
				</tr>
				<tr>
					<?php if($rs['image_low'] == 1){?>
					<td width="20"><input type="checkbox" name="addlcart" title="cart" value="<?php echo $item;?>" class="styled" <?php echo (in_array($item, $lcart)? 'checked' : '');?>></td>
					<td valign="middle">Royalty-free</td>
				    <td valign="middle" align="right">Price: 
					<?php
					if(empty($_GET['c']) || $_GET['c'] == '' || $_GET['c'] == 'usd')
						echo '$'.$rs['usd_low'];
					else
						echo 'BDT '.$rs['bdt_low'];
					?>
					</td>
					<?php }else{?>
					<td colspan="3" height="25">&nbsp;</td>
					<?php }?>
				</tr -->
				<tr>
					<td colspan="2"><a class="normal" href="javascript:RemoveItem('<?php echo $item;?>')">&nbsp;<img src="<?php echo $imagepath;?>cross.jpg">&nbsp;&nbsp;&nbsp;&nbsp;Remove</a></td>
				    <td align="right">
					Price: 
					<?php
					if(empty($_GET['c']) || $_GET['c'] == '' || $_GET['c'] == 'usd')
						echo '$'.$rs['usd_high'];
					else
						echo 'BDT '.$rs['bdt_high'];
					?>
					</td>
				</tr>
			</table>
		</td>
	  </tr>
	  <tr>
		<td colspan="4" height="10" valign="middle" style="padding-bottom:15px;"><hr size="1" style="color:#cccccc"></td>
	  </tr>
	</table>
	</div></div>
	<?php }
	}
	else
	{?>
	<div style="padding-bottom:350px;padding-left:12px">Currently there is no item here to order.</div>
	<?php }?>
	<div style="width:465px" align="right" id="countTotal"><?php if($price > 0){?><span style="font-weight:bold">Total: <?php echo ((empty($_GET['c']) || $_GET['c'] == '' || $_GET['c'] == 'usd')? '$' : 'BDT ').$price;?></span><?php }?></div>
	<?php if(count($cart) > 0){?>
	<div id="buybutton" style="padding-top:50px;width:465px;" align="right"><input type="button" class="button" value="Buy Now"></div>
	<?php }
?>
</p>
</div>
<?php if(count($cart) > 0){?>
<script language="javascript">
var h_items = new Array();
var l_items = new Array();
<?php 
if(trim($h_items) != '')
	echo "h_items = Array(".$h_items.");\nvar h_price = Array(".$h_price.");\n";
if(trim($l_items) != '')
	echo "l_items = Array(".$l_items.");\nvar l_price = Array(".$l_price.");\n";
?>

function price_calc()
{
	var priceTotal = 0;
	var itemIndex = -1;
	for(var i = 0; i < HCart.length; i++) 
	{
		itemIndex = getArrItemIndex(HCart[i], h_items);
		if(itemIndex != -1)
			priceTotal += h_price[itemIndex];
	}
	for(i = 0; i < LCart.length; i++) 
	{
		itemIndex = getArrItemIndex(LCart[i], l_items);
		if(itemIndex != -1)
			priceTotal += l_price[itemIndex];
	}
	
	return priceTotal;
}

function getArrItemIndex(theItem, theArray)
{
	var ItemIndex=-1;
	for(var i=0; i<theArray.length; i++)
		if(theArray[i] == theItem)
			ItemIndex = i;
	return ItemIndex;
}

function countTotalPrice()
{
	var totalPrice = price_calc();
	if(totalPrice != 0)
		$("#countTotal").html("<b>Total: <?php echo ($_GET['c']=='bdt'?'BDT ':'$');?>"+totalPrice+"</b>");
	else
		$("#countTotal").html('');
}

function RemoveItem(citem)
{
	DeleteFromCart(citem);
	DeleteHiresFromCart(citem);
	DeleteLowresFromCart(citem);
	SaveCart();
	SaveHiresCart();
	SaveLowresCart();
	countTotalPrice();
	$('div#div'+citem+'_1').fadeOut(1000);
	//setTimeout(function(){
	$('div#div'+citem).hide("blind", { direction: "vertical" }, 2000);
	//}, 500);
}

function WatchBuyButton(){
	if(Cart.length == 0)
	{
		$("#counTotal").hide();
		$("#buybutton").hide();
		$("#cartcontent").append('<div id="noitem" style="padding-bottom:350px;padding-left:12px;color:#ffffff">There is no item in the cart</div>');
		setTimeout(function(){ $("#noitem").css({color:'#666666'}); }, 2000);
	}
	else
		setTimeout("WatchBuyButton()", 50);
}

WatchBuyButton();
//countTotalPrice();
</script>
<?php }?>
