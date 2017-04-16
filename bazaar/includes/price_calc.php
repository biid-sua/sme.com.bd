<?php
$sitebase = "../";
require_once("../admin/config.php");
require_once($mainconn);

$cart = Array();
$hcart = Array();
$lcart = Array();
$price = 0;
if(!empty($_SESSION['currency']))
	$currency = $_SESSION['currency'];
else
	$currency = 'usd';

$cartarray = $_COOKIE['GZC_Cookie'];
if(trim(str_replace(",","",$cartarray)) != '')
	$cart = explode(",", $cartarray);
$hcartarray = $_COOKIE['GZCH_Cookie'];
if(trim(str_replace(",","",$hcartarray)) != '')
	$hcart = explode(",", $hcartarray);
$lcartarray = $_COOKIE['GZCL_Cookie'];
if(trim(str_replace(",","",$lcartarray)) != '')
	$lcart = explode(",", $lcartarray);
if(count($cart) > 0){
foreach($cart as $item)
{
	$qry = "SELECT * FROM ".$db_prefix."photos WHERE id=$item";
	$res = mysql_query($qry);
	$rs = mysql_fetch_assoc($res);
	if(in_array($item, $hcart))
	{
		if($currency == 'usd')
			$price += $rs['usd_high'];
		else
			$price += $rs['bdt_high'];
	}
	if(in_array($item, $lcart))
	{
		if($currency == 'usd')
			$price += $rs['usd_low'];
		else
			$price += $rs['bdt_low'];
	}
}
}
if($price > 0)
	echo '<span style="font-weight:bold">Total: '.($currency == 'usd'? '$' : 'BDT ').$price.'</span>';
?>