<?php
require_once("antihack.php");
require_once($includepath."saveditem_loader.php");
?>

<script type="text/javascript" src="<?php echo $scriptpath;?>cookie.js"></script>
<script type="text/javascript" src="<?php echo $scriptpath;?>cart.js"></script>

<?php
if(empty($_GET['event']))
{

if(empty($_GET['p']))
	$ppage = 1;
else
	$ppage = intval($_GET['p']);
$pcount = 12;

if(!empty($_GET['c']))
	$filter = "WHERE image_cat=".mysql_real_escape_string($_GET['c']);
$qry = "SELECT * FROM ".$db_prefix."photos $filter ORDER BY image_order DESC LIMIT ".(($ppage-1)*$pcount).", ".$pcount;
$res = mysql_query($qry);
?>
<div>
<p>
  <table border="0" cellpadding="0" cellspacing="0" width="100%" style="position:relative;left:5px;">
		<tr>
			<td align="left">
			<img src="<?php echo $imagepath;?>dot.jpg">&nbsp;&nbsp;&nbsp;
			<span class="heading">
			<?php 
			if(empty($_GET['c']))
				echo 'Recently Added';
			else
			{
				$rscat = mysql_fetch_assoc(mysql_query("SELECT cat_title FROM categories WHERE id=".$_GET['c']));
				echo $rscat['cat_title'];
			}
			?>
			</span>
			</td>
			<td align="right">
				<?php if($_GET['c'] != ""){?>
				<table border="0" cellpadding="0" cellspacing="5">
					<script language="javascript">
					function setNav(frm)
					{
						navnum = document.getElementById('inputNav').value;
						if(navnum == '')
							navnum = 1;
						frm.action += '&p='+navnum;
						return true;
					}
					</script>
					<?php
					$qrytmp = "SELECT * FROM ".$db_prefix."photos $filter ORDER BY image_order DESC";
					$restmp = mysql_query($qrytmp);
					$ptotal = mysql_num_rows($restmp);
					if($ptotal <= $pcount)
						$ptotal = 1;
					else
						$ptotal = ceil($ptotal/$pcount);
					?>
					<form id="frmNav" method="post" action="<?php echo $_SERVER['PHP_SELF'];?>?detail=gallery<?php echo (!empty($_GET['c'])?'&c='.$_GET['c']:'').(!empty($_GET['r'])?'&r='.$_GET['r']:'');?>" onSubmit="return setNav(this)">
					<tr>
						<?php if($ppage != 1){?>
						<td valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=gallery&p=<?php echo ($ppage-1).(!empty($_GET['c'])?'&c='.$_GET['c']:'').(!empty($_GET['r'])?'&r='.$_GET['r']:'');?>"><img src="<?php echo $imagepath;?>arrow_left.gif"></a>&nbsp;&nbsp;</td>
						<?php }?>
						<td valign="middle">Page&nbsp;&nbsp;<input id="inputNav" type="text" class="text" style="width:20px;" value="<?php echo $ppage;?>" onKeyPress="return numbersonly(event)">&nbsp;&nbsp;of <?php echo $ptotal;?></td>
						<?php if($ppage != $ptotal){?>
						<td valign="middle">&nbsp;&nbsp;<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=gallery&p=<?php echo ($ppage+1).(!empty($_GET['c'])?'&c='.$_GET['c']:'').(!empty($_GET['r'])?'&r='.$_GET['r']:'');?>"><img src="<?php echo $imagepath;?>arrow_right.gif"></a></td>
						<?php }?>
					</tr>
					</form>
				</table>
			<?php }?>
			</td>
		</tr>
	</table>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<br><br>
	<div style="height:1px;"></div>
	<?php
	if(mysql_num_rows($res) > 0){
	$icount = 0;
	$jcount = 0;
	?>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" style="position:relative;left:-22px;">
		<tr>
		<?php while($rs = mysql_fetch_assoc($res)){
			$icount++;
			$jcount++;
		?>
			<td align="center">
				<table border="0" cellpadding="0" cellspacing="0" width="184">
					<?php
					list($width, $height) = getimagesize($imgupthumbpath.$rs['image_name']);
					if($width > $height)
						$imgdim = "width='170'";
					else
						$imgdim = "height='170'";
					?>
					<tr align="left">
					  <td colspan="4">
							<table width="170" style="left:2px;" cellpadding="0" cellspacing="0">
								<tr>
									<td width="2">&nbsp;</td>
									<td align="center" valign="middle" height="170" style="border:1px solid #cccccc"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=gallery&event=viewdetail&pid=<?php echo $rs['id'].'&c='.$rs['image_cat'];?>"><img src="<?php echo $imgupthumbpath.$rs['image_name'];?>" <?php echo $imgdim;?>></a></td>
								</tr>
					  		</table>
					  </td>
				  </tr>
					<tr>
						<td align="left" style="padding-top:5px" width="25" height="30"><input type="checkbox" class="styled" title="lightbox" name="addlightbox" value="<?php echo $rs['id'];?>" <?php echo (in_array($rs['id'], $tmplightbox)? 'checked' : '');?>></td>
						<td  align="left" style="padding-top:5px">Lightbox</td>
						<td align="right" style="padding-top:5px">Add to cart&nbsp;</td>
					    <td align="right" style="padding-top:5px;" width="25"><input type="checkbox" class="styled" name="addcart" value="<?php echo $rs['id'];?>" title="cart" <?php echo (in_array($rs['id'], $cart)? 'checked' : '');?>></td>
					</tr>
				</table>
			</td>
		<?php
			if($icount == mysql_num_rows($res))
			{
				for($i=$jcount; $i<4; $i++)
					echo '<td><div style="width:170px"></div></td>';
				echo '</tr>';
			}
			elseif($icount%4 == 0)
				echo '</tr><td height="30" colspan="4"></td><tr>';
			}
		?>
	</table>
	<?php  }else{?>
	<div style="height:350px;"></div>
	<?php }?>
</p>
<script language="javascript">
<?php /*function CheckboxMonitor()
{
	var hascheckedbox = false;
	var inputlist = document.getElementById('content').getElementsByTagName('input');
	//document.getElementById('status').innerHTML = "";
	for(var i=0; i<inputlist.length; i++)
	{
		if(inputlist[i].type == 'checkbox')
		{
			if(inputlist[i].checked == true)
			{
				hascheckedbox = true;
				if(inputlist[i].title == 'cart')
				{
					//document.getElementById('status').innerHTML += '['+inputlist[i].value+' found]';
					AddToCart(inputlist[i].value);
				}
				else if(inputlist[i].title == 'lightbox')
					AddToLightbox(inputlist[i].value);
			}
			else
			{
				if(inputlist[i].title == 'cart')
				{
					DeleteFromCart(inputlist[i].value);
				}
				if(inputlist[i].title == 'lightbox')
					DeleteFromLightbox(inputlist[i].value);
			}
		}
	}
	
	if(hascheckedbox == true)
	{
		SaveCart();
		SaveLightbox();
	}
	
	//document.getElementById('status').innerHTML += 'Cart: '+Cookie.get('GZC_Cookie')+'/'+Cart+'<br>Lightbox: '+Cookie.get('GZL_Cookie')+'/'+Lightbox+'<br>';
	setTimeout('CheckboxMonitor()', 50);
}
CheckboxMonitor();*/?>
function numbersonly(e) {
	var unicode=e.charCode? e.charCode : e.keyCode;
	if (unicode!=8 && unicode!=9 && unicode!=13){ //if the key isn’t the backspace key (which we should allow)
	if (unicode<48||unicode>57) //if not a number return false //disable key press
		return false;
	else
		return true;
}}
</script>
</div>
<?php
}
else if($_GET['event']=='initnav')
{
	$qry = "SELECT * FROM ".$db_prefix."photos WHERE image_cat=".$_GET['c']." ORDER BY image_order DESC";
	$res = mysql_query($qry);
	$icount = 0;
	while($rs = mysql_fetch_assoc($res))
	{
		$icount++;
		if($icount==intval($_GET['p']))
		{
			$pid = $rs['id'];
			break;
		}
	}
	header("location: index.php?detail=gallery&event=viewdetail&c=".$_GET['c']."&pid=".$rs['id']);
}
else
{
	if(!empty($_GET['p']))
	{
		if(!empty($_GET['c']))
			$qry = "SELECT * FROM ".$db_prefix."photos WHERE image_cat=".mysql_real_escape_string($_GET['c']);
		else
			$qry = "SELECT * FROM ".$db_prefix."photos ORDER BY image_order DESC LIMIT 12";
		$res = mysql_query($qry);
		if(intval($_GET['p']) <= mysql_num_rows($res))
			mysql_data_seek($res, intval($_GET['p'])-1);
		$rs = mysql_fetch_assoc($res);
		$pid = $rs['id'];
	}
	else
		$pid = $_GET['pid'];
	
	
	$qry = "SELECT p.*, c.cat_title FROM ".$db_prefix."photos as p, ".$db_prefix."scategories as c WHERE p.id=$pid AND p.image_cat=c.id";
	$res = mysql_query($qry);
	$rs = mysql_fetch_assoc($res);

	/*$lightbox = Array();
	$cart = Array();*/
	$hcart = Array();
	$lcart = Array();
	$price = 0;
	
	/*$lightboxarray = $_COOKIE['GZL_Cookie'];
	if(trim(str_replace(",","",$lightboxarray)) != '')
		$lightbox = explode(",", $lightboxarray);
	$cartarray = $_COOKIE['GZC_Cookie'];
	if(trim(str_replace(",","",$cartarray)) != '')
		$cart = explode(",", $cartarray);*/
	$hcartarray = $_COOKIE['GZCH_Cookie'];
	if(trim(str_replace(",","",$hcartarray)) != '')
		$hcart = explode(",", $hcartarray);
	$lcartarray = $_COOKIE['GZCL_Cookie'];
	if(trim(str_replace(",","",$lcartarray)) != '')
		$lcart = explode(",", $lcartarray);
?>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;<img src="<?php echo $imagepath;?>dot.jpg">&nbsp;&nbsp;&nbsp;
	<span class="heading">
	<?php 
	if(empty($_GET['c']) && empty($_GET['r']))
		//echo 'Recently Added';
		echo $rs['cat_title'];
	elseif(!empty($_GET['c']))
	{
		$rscat = mysql_fetch_assoc(mysql_query("SELECT cat_title FROM categories WHERE id=".$_GET['c']));
		echo $rscat['cat_title'];
	}
	elseif(!empty($_GET['r']))
	{
		if($_GET['r'] == 'cart')
			echo 'Cart';
		elseif($_GET['r'] == 'lightbox')
			echo 'Lightbox';
	}
	?>
	</span><br>
	<?php
	//Get total number of images
	$totalcount = 0;
	if(empty($_GET['c']) && empty($_GET['r']))
	{
		$qrycount = "SELECT * FROM ".$db_prefix."photos WHERE image_cat=".$rs['image_cat'];
		$rescount = mysql_query($qrycount);
		$totalcount = mysql_num_rows($rescount);
	}
	elseif(!empty($_GET['c']))
	{
		$qrycount = "SELECT * FROM ".$db_prefix."photos WHERE image_cat=".mysql_real_escape_string($_GET['c']);
		$rescount = mysql_query($qrycount);
		$totalcount = mysql_num_rows($rescount);
	}
	elseif($_GET['r'] == 'cart')
		$totalcount = count($cart);
	elseif($_GET['r'] == 'lightbox')
		$totalcount = count($tmplightbox);
	
	//Get image position in the records
	$recordpos = 0;
	if(empty($_GET['c']) && empty($_GET['r']))
	{
		$qrypos = "SELECT * FROM ".$db_prefix."photos WHERE image_cat=".$rs['image_cat']." ORDER BY image_order DESC";
		$respos = mysql_query($qrypos);
		$icount = 0;
		while($rspos = mysql_fetch_assoc($respos))
		{
			$icount++;
			if($rspos['id'] == $pid)
				break;
		}
	}
	elseif(!empty($_GET['c']))
	{
		$qrypos = "SELECT * FROM ".$db_prefix."photos WHERE image_cat=".mysql_real_escape_string($_GET['c'])." ORDER BY image_order DESC";
		$respos = mysql_query($qrypos);
		$icount = 0;
		while($rspos = mysql_fetch_assoc($respos))
		{
			$icount++;
			if($rspos['id'] == $pid)
				break;
		}
	}
	elseif($_GET['r'] == 'cart')
	{
		$icount = 0;
		foreach($cart as $item)
		{
			$icount++;
			if($item == $pid)
				break;
		}
	}
	elseif($_GET['r'] == 'lightbox')
	{
		$icount = 0;
		foreach($tmplightbox as $item)
		{
			$icount++;
			if($item == $pid)
				break;
		}
	}
	$recordpos = $icount;

	//Get prev/next image position in the records
	if(empty($_GET['c']) && empty($_GET['r']))
	{
		$qrypos = "SELECT * FROM ".$db_prefix."photos WHERE image_order <= ".$rs['image_order']." AND image_cat=".$rs['image_cat']." ORDER BY image_order DESC LIMIT 2";
		$respos = mysql_query($qrypos);
		if(mysql_num_rows($respos) > 1)
		{
			mysql_data_seek($respos, 1);
			$rspos = mysql_fetch_assoc($respos);
			$nextpos = $rspos['id'];
		}
		$qrypos = "SELECT * FROM ".$db_prefix."photos WHERE image_order >= ".$rs['image_order']." AND image_cat=".$rs['image_cat']." ORDER BY image_order ASC LIMIT 2";
		$respos = mysql_query($qrypos);
		if(mysql_num_rows($respos) > 1)
		{
			mysql_data_seek($respos, 1);
			$rspos = mysql_fetch_assoc($respos);
			$prevpos = $rspos['id'];
		}
	}
	elseif(!empty($_GET['c']))
	{
		$qrypos = "SELECT * FROM ".$db_prefix."photos WHERE image_order <= ".$rs['image_order']." AND image_cat=".mysql_real_escape_string($_GET['c'])." ORDER BY image_order DESC LIMIT 2";
		$respos = mysql_query($qrypos);
		if(mysql_num_rows($respos) > 1)
		{
			mysql_data_seek($respos, 1);
			$rspos = mysql_fetch_assoc($respos);
			$nextpos = $rspos['id'];
			mysql_data_seek($respos, 0);
		}
		$qrypos = "SELECT * FROM ".$db_prefix."photos WHERE image_order >= ".$rs['image_order']." AND image_cat=".mysql_real_escape_string($_GET['c'])." ORDER BY image_order ASC LIMIT 2";
		$respos = mysql_query($qrypos);
		if(mysql_num_rows($respos) > 1)
		{
			mysql_data_seek($respos, 1);
			$rspos = mysql_fetch_assoc($respos);
			$prevpos = $rspos['id'];
		while($rss = mysql_fetch_assoc($respos))
			echo $rss['id'].'<br>';
		}
	}
	elseif($_GET['r'] == 'cart')
	{
		$nextpos = $cart[$recordpos];
		$prevpos = $cart[$recordpos-2];
	}
	elseif($_GET['r'] == 'lightbox')
	{
		$nextpos = $tmplightbox[$recordpos];
		$prevpos = $tmplightbox[$recordpos-2];
	}
	
	?>
	<table border="0" cellpadding="0" cellspacing="0" style="margin-left:12px;">
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="1">
					<script language="javascript">
					function setNav(frm)
					{
						navnum = document.getElementById('inputNav').value;
						if(navnum == '')
							navnum = 1;
						frm.action += '&p='+navnum;
						return true;
					}
					</script>
					<form id="frmNav" method="post" action="<?php echo $_SERVER['PHP_SELF'];?>?detail=gallery&event=initnav<?php echo (!empty($_GET['c'])?'&c='.$_GET['c']:'').(!empty($_GET['r'])?'&r='.$_GET['r']:'');?>" onSubmit="return setNav(this)">
					<tr>
						<?php if($recordpos != 1){?>
						<td valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=gallery&event=viewdetail&pid=<?php echo $prevpos.(!empty($_GET['c'])?'&c='.$_GET['c']:'').(!empty($_GET['r'])?'&r='.$_GET['r']:'');?>"><img src="<?php echo $imagepath;?>arrow_left.gif"></a>&nbsp;&nbsp;</td>
						<?php }?>
						<td valign="middle">Image&nbsp;&nbsp;<input id="inputNav" type="text" class="text" style="width:20px;" value="<?php echo $recordpos;?>" onKeyPress="return numbersonly(event)">&nbsp;&nbsp;of <?php echo $totalcount;?></td>
						<?php if($recordpos != $totalcount){?>
						<td valign="middle">&nbsp;&nbsp;<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=gallery&event=viewdetail&pid=<?php echo $nextpos.(!empty($_GET['c'])?'&c='.$_GET['c']:'').(!empty($_GET['r'])?'&r='.$_GET['r']:'');?>"><img src="<?php echo $imagepath;?>arrow_right.gif"></a></td>
						<?php }?>
					</tr>
					</form>
					<tr>
						<td height="5"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<div id="imgdetail">
				<?php if($recordpos != $totalcount){?>
				<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=gallery&event=viewdetail&pid=<?php echo $nextpos.(!empty($_GET['c'])?'&c='.$_GET['c']:'').(!empty($_GET['r'])?'&r='.$_GET['r']:'');?>">
				<?php }?>
				<img src="<?php echo $imguploadpath.$rs['image_name'];?>" border="0" style="border:1px solid #cccccc">
				<?php if($recordpos != $totalcount){ echo "</a>";}?>
				</div>
			</td>
		</tr>
		<tr>
			<td style="line-height:20px">
				Image ID - <?php echo $rs['image_title'];?><br>
				<?php
				$qrykw = "SELECT * FROM ".$db_prefix."photo_keyword WHERE pid=$pid ORDER BY keyword ASC";
				$reskw = mysql_query($qrykw);
				while($rskw = mysql_fetch_assoc($reskw))
					$keyword .= ", <a href='".$_SERVER['PHP_SELF']."?detail=search&q=".str_replace(" ","+",$rskw['keyword'])."'>".$rskw['keyword'].'</a>';
				echo '<div style="padding:3px 0px 10px 0px">Keywords - '.substr($keyword, 2).'</div>';
				?>
			</td>
		</tr>
		<tr><td>
			<table border="0" cellpadding="0" cellspacing="0" style="padding:0">
				<tr>
					<th align="left">Description</th><td width="30"></td>
					<th align="left"><?php if($rs['image_high']+$rs['image_low'] > 1){?><input type="checkbox" name="hires" id="hires" class="styled" value="<?php echo $rs['image_high'];?>" <?php echo (in_array($pid, $hcart)?'checked':'');?>><span style="position:relative;top:5px;left:-5px;font-weight:bold">High Res</span><?php }?></th>
					<td width="30"></td>
					<th align="left"><?php if($rs['image_high']+$rs['image_low'] > 1){?><input type="checkbox" name="lowres" id="lowres" class="styled" value="<?php echo $rs['image_low'];?>" <?php echo (in_array($pid, $lcart)?'checked':'');?>><span style="position:relative;top:5px;left:-2px;font-weight:bold">Royalty-free</span><?php }?></th>
				</tr>
				<tr>
					<td style="padding-top:5px">Dimension</td>
					<td></td>
					<td style="padding-top:5px;padding-left:5px;"><?php echo ($rs['image_high']==1? $rs['dim_high'].' px' : '');?></td>
					<td></td>
					<td style="padding-top:5px;padding-left:5px;"><?php echo ($rs['image_low']==1? $rs['dim_low'].' px' : '');?></td>
				</tr>
				<tr style="padding-top:15px">
					<td>Resolution</td>
					<td></td>
					<td style="padding-left:5px;"><?php echo ($rs['image_high']==1? $rs['res_high'].' dpi' : '');?></td>
					<td></td>
					<td style="padding-left:5px;"><?php echo ($rs['image_low']==1? $rs['res_low'].' dpi' : '');?></td>
				</tr>
				<tr style="padding-top:15px">
					<td>File Format</td>
					<td></td>
					<td style="padding-left:5px;"><?php echo ($rs['image_high']==1? $rs['format_high'] : '');?></td>
					<td></td>
					<td style="padding-left:5px;"><?php echo ($rs['image_low']==1? $rs['format_low'] : '');?></td>
				</tr>
				<tr style="padding-top:15px">
					<td>File Size</td>
					<td></td>
					<td style="padding-left:5px;"><?php echo ($rs['image_high']==1? $rs['size_high'].' MB' : '');?></td>
					<td></td>
					<td style="padding-left:5px;"><?php echo ($rs['image_low']==1? $rs['size_low'].' KB' : '');?></td>
				</tr>
				<tr style="padding-top:15px">
					<td valign="top">Price</td>
					<td></td>
					<td valign="top" style="padding-left:5px;"><?php echo ($rs['image_high']==1? (!empty($rs['usd_high'])? 'USD '.$rs['usd_high'].'<br>' : '').(!empty($rs['bdt_high'])? 'BDT '.$rs['bdt_high'] : '') : '');?></td>
					<td></td>
					<td valign="top" style="padding-left:5px;"><?php echo ($rs['image_low']==1? (!empty($rs['usd_low'])? 'USD '.$rs['usd_low'].'<br>' : '').(!empty($rs['bdt_low'])? 'BDT '.$rs['bdt_low'] : '') : '');?></td>
				</tr>
			</table>
		</td></tr>
		<tr><td height="20"></td></tr>
		<tr><td>
			<input type="button" class="button" name="lightbox" id="lightbox" onClick="toggleLightbox()" value="<?php echo (in_array($pid, $tmplightbox)? 'Remove from lightbox' : 'Add to lightbox');?>">&nbsp;&nbsp;<input type="button" class="button" name="cart" id="cart" onClick="toggleCart()" value="<?php echo (in_array($pid, $cart)? 'Remove from cart' : 'Add to cart');?>">
		</td></tr>
	</table>
</p>
<script language="javascript">
/*function checkMonitor()
{
	if(document.getElementById('hires').value == 0 && document.getElementById('hires').checked == true)
	{
		document.getElementById('hires').checked = false;
		Custom.clear();
		alert('You cannot select Hi Res photo');
	}
	if(document.getElementById('lowres').value == 0&& document.getElementById('lowres').checked == true)
	{
		document.getElementById('lowres').checked = false;
		Custom.clear();
		alert('You cannot select Low Res photo');
	}
	
	setTimeout('checkMonitor()', 50);
}
checkMonitor();*/

var pid = <?php echo $pid;?>;
var inLightbox = <?php echo (in_array($pid, $tmplightbox)?1:0);?>;
var inCart = <?php echo (in_array($pid, $cart)?1:0);?>;

function toggleLightbox()
{
	if(inLightbox == 0)
	{
		AddToLightbox(pid);
		SaveLightbox();
		inLightbox = 1;
		document.getElementById('lightbox').value = 'Remove from lightbox';
	}
	else
	{
		DeleteFromLightbox(pid);
		SaveLightbox();
		inLightbox = 0;
		document.getElementById('lightbox').value = 'Add to lightbox';
	}
}

function toggleCart()
{
	if(inCart == 0)
	{
		AddToCart(pid);
		SaveCart();
		if(document.getElementById('hires'))
			if(document.getElementById('hires').checked == true)
			{
				AddHiresToCart(pid);
				SaveHiresCart();
			}
		if(document.getElementById('lowres'))
			if(document.getElementById('lowres').checked == true)
			{
				AddLowresToCart(pid);
				SaveLowresCart();
			}
		inCart = 1;
		document.getElementById('cart').value = 'Remove from cart';
	}
	else
	{
		DeleteFromCart(pid);
		DeleteHiresFromCart(pid);
		DeleteLowresFromCart(pid);
		SaveCart();
		SaveHiresCart();
		SaveLowresCart();
		inCart = 0;
		document.getElementById('cart').value = 'Add to cart';
		document.getElementById('hires').checked = false;
		document.getElementById('lowres').checked = false;
		Custom.clear();
	}
}

function numbersonly(e) {
	var unicode=e.charCode? e.charCode : e.keyCode;
	if (unicode!=8 && unicode!=9 && unicode!=13){ //if the key isn’t the backspace key (which we should allow)
	if (unicode<48||unicode>57) //if not a number return false //disable key press
		return false;
	else
		return true;
}}

$("#imgdetail").bind("contextmenu",function(e){
	return false;
});
</script>
<?php
}
?>