<?php
session_start();
//require_once("antihack.php");
if($_GET['req']=='ajax')
{
	$sitebase="../";
	require_once($sitebase."admin/config.php");
	require_once($mainconn);
	$imagepath = $siteurl."images/";
	$newimgupthumbpath = $siteurl."photos/thumb/";
}
else
{
	require_once("antihack.php");
	if($_SESSION['uid'] == 99999)
	{
	?>
	<script type="text/javascript">
	function toggleAllow(itemid, val)
	{
		var data = $.ajax({
			url: "<?php echo $includepath;?>manage_products.php?req=ajax&event=allowitem&item_id="+itemid+"&allowed="+val,
			async: false
		}).responseText;
		if(data == 'added')
			$('#allowitem_'+itemid).html('<a href="javascript:toggleAllow('+itemid+', 0)"><img src="<?php echo $imagepath;?>tick.png"></a>')
		else if(data == 'removed')
			$('#allowitem_'+itemid).html('<a href="javascript:toggleAllow('+itemid+', 1)"><img src="<?php echo $imagepath;?>cross.png"></a>')
		else
			alert("An error has occured while changing permission of this product. Please try again");
	}
	</script>
	<?php
	}
	?>
	<script type="text/javascript" src="<?php echo $scriptpath;?>thickbox-compressed.js"></script>
	<link rel="stylesheet" type="text/css" href="<?php echo $scriptpath;?>thickbox.css">
	<script type="text/javascript">
	function productInfo(itemid)
	{
		var data = $.ajax({
			url: "<?php echo $includepath;?>manage_products.php?req=ajax&event=iteminfo&item_id="+itemid,
			async: false
		}).responseText;
		$("#prodinfo").html(data);
	}
	</script>
	<?php
}
require_once($sharedaccess);
require_once($includepath."pagenav.php");

if(isset($_POST['submitform']))
{
	$prod_name = trim($_POST['prod_name']);
	$prod_order = trim($_POST['prod_order']);
	if(!empty($prod_name))
	{
		$qry = "INSERT INTO ".$db_prefix."prods(prod_title, prod_order) VALUES('$prod_name', $prod_order)";
		mysql_query($qry);
		header("location: ".$_SERVER['PHP_SELF']."?detail=manage_products");
	}
}

$rs_as = mysql_fetch_assoc(mysql_query("SELECT * FROM ".$db_prefix."admin_config"));

if(empty($_GET['event']))
{

if(!empty($_GET['cat_id']))
{
	$filter = "WHERE prod_cat=".$_GET['cat_id'];
	$qry2 = "SELECT * FROM ".$db_prefix."categories WHERE id=".$_GET['cat_id'];
	$res2 = mysql_query($qry2);
	$rs = mysql_fetch_assoc($res2);
}

if($_SESSION['uid'] == 99999)
	$filter = "WHERE allowed=1";

if($_SESSION['uid'] != 99999)
{
	if(empty($filter))
		$filter = "WHERE uid=".$_SESSION['uid'];
	else
		$filter .= " AND uid=".$_SESSION['uid'];
}

if(!empty($_GET['prod_order']))
	$order = "ORDER BY ".$_GET['prod_order']." ASC";
else
	$order = "ORDER BY prod_order DESC";


$qrycat = "SELECT * FROM ".$db_prefix."categories ORDER by cat_title ASC";
$rescat = mysql_query($qrycat);
$cat_menu = "<select onchange='SortCategory(this.value)'><option value=''>All</option>";
while($rscat = mysql_fetch_assoc($rescat))
	$cat_menu .= "<option value='".$rscat['id']."'".(($rscat['id']==$_GET['cat_id'])? ' selected' : '').">".$rscat['cat_title']."</option>";
$cat_menu .= "</select>";

if(empty($_GET['p']))
	$ppage = 1;
else
	$ppage = $_GET['p'];
	
if(empty($_GET['count']))
	$pcount = 10;
else
	$pcount = $_GET['count'];

$limit = "LIMIT ".(($ppage-1)*$pcount).", ".$pcount;

$qry = "SELECT * FROM ".$db_prefix."prods $filter $order $limit";
$res = mysql_query($qry);
?>
<script language="javascript">
function SortCategory(opt)
{
	if(opt == '')
		location = 'admincp.php?detail=manage_products';
	else
		location = 'admincp.php?detail=manage_products&cat_id='+opt;
}
</script>
<p class="heading" style="margin-left:20px;">
<div style="width:95%;margin-left:25px">
<div style="float:left">Manage Products of Category: <?php echo $cat_menu;?></div>
<div style="float:right">Total product(s) in category: <?php echo mysql_num_rows(mysql_query("SELECT * FROM ".$db_prefix."prods $filter $order"));?></div>
<br><br>
<div style="border-top:1px dashed #cccccc;padding-top:10px;margin-bottom:10px">
	<?php
	$qryp = "SELECT * FROM ".$db_prefix."prods WHERE allowed=0";
	$resp = mysql_query($qryp);
	$pnum = mysql_num_rows($resp);
	if($_SESSION['uid'] == 99999){
	?>
	<div style="float:left">
		<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=allowproduct<?php if(!empty($_GET['cat_id'])){echo "&prod_cat=".$_GET['cat_id'];}?>" <?php if($pnum > 0){echo 'style="color:red"';}?>>(<?php echo $pnum;?>) Products waiting for permission</a>
	</div>
	<?php }?>
	<div style="float:right">
		<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=addproduct<?php if(!empty($_GET['cat_id'])){echo "&prod_cat=".$_GET['cat_id'];}?>">Add New Product</a>
	</div>
</div>
<br>
</div>
</p>
<table border="1" cellspacing="0" cellpadding="5" width="95%" class="bordered" align="center">
	<tr class="light_bg">
		<th align="left" style="padding:5px 10px 5px 10px">Product ID </th>
		<th align="left" style="padding:5px 10px 5px 10px">Product Name</th>
		<?php if($_SESSION['uid'] == 99999){?>
		<th style="">Added By</th>
		<th style="">Sort Order</th>
		<?php 
		}
		?>
		<th style="">Category</th>
		<th style="">Thumbnail</th>
		<th>
		<?php if($_SESSION['uid'] == 99999){?>
		Allowed
		<?php }else{?>
		Status
		<?php }?>
		</th>
		<th style="">Manage</th>
	</tr>
	<?php if(mysql_num_rows($res) > 0){
		while($rs = mysql_fetch_assoc($res)){?>
	<tr>
		<td align="cent" style="padding:5px 10px 5px 10px">
			<?php echo $rs['prod_id'];?>
		</td>
		<td align="cent" style="padding:5px 10px 5px 10px">
			<?php echo $rs['prod_name'];?>
		</td>
		<?php if($_SESSION['uid'] == 99999){?>
		<td align="center" style="">
			<?php
			if($rs['uid'] == 99999 || empty($rs['uid']))
			{
				echo "Admin";
			}
			else
			{
				$rsuser = mysql_fetch_assoc(mysql_query("SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs['uid']));
				echo $rsuser['uname'];
			}	
			?>
		</td>
		<td align="center" style="">
			<?php echo $rs['prod_order'];?>
		</td>
		<?php
		}
		?>
		<td align="center" style="">
			<?php
			 $cat_id = $rs['prod_cat'];
			 $qry2 = "SELECT * FROM ".$db_prefix."categories WHERE id=$cat_id";
			 $res2 = mysql_query($qry2);
			 $rs2 = mysql_fetch_assoc($res2);
			 echo '<a href="admincp.php?detail=manage_products&cat_id='.$rs2['id'].'">'.$rs2['cat_title'].'</a>';
			?>
		</td>
		<td align="center" style="">
			<?php
			if(file_exists($imgupthumbpath.$rs['prod_image'])){
				list($width, $height) = getimagesize($imgupthumbpath.$rs['prod_image']);
				if($width > $height)
					$imgdim = "width='100'";
				else
					$imgdim = "height='100'";
			}
			?>
			<a href="#TB_inline?height=300&width=400&inlineId=prodinfo" class="thickbox" onClick="productInfo(<?php echo $rs['id'];?>)"><img src="<?php if(file_exists($imgupthumbpath.$rs['prod_image'])){echo $imgupthumbpath.$rs['prod_image'];}else{echo $imagepath."nopicture.gif";}?>" <?php echo $imgdim;?>></a>
		</td>
		<td align="center" valign="middle">
			<?php if($_SESSION['uid'] == 99999){?>
			<div id="allowitem_<?php echo $rs['id'];?>">
			<?php
			if($rs['allowed'] == 1)
				echo '<a href="javascript:toggleAllow('.$rs['id'].', 0)"><img src="'.$imagepath.'tick.png"></a>';
			else
				echo '<a href="javascript:toggleAllow('.$rs['id'].', 1)"><img src="'.$imagepath.'cross.png"></a>';
			?>
			</div>
			<?php }else{
				if($rs['allowed'] == 1)
					echo '<span style="color:green">Added to<br>Products</span>';
				else
					echo '<span style="color:red">Waiting for<br>approval</span>';
			}?>
		</td>
		<td align="center" valign="middle" style="">
			<table border="0" cellpadding="0" cellspacing="0" class="noborder">
			<?php if(!empty($_GET['cat_id'])){?>
				<td valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=sort&prod_id=<?php echo $rs['id'];?>&order=<?php echo $rs['prod_order'];?>&move=up<?php echo (!empty($_GET['cat_id'])? '&prod_cat='.$_GET['cat_id'] : '').(!empty($_GET['count'])? '&count='.$_GET['count'] : '').(!empty($_GET['p'])? '&p='.$_GET['p'] : '');?>" title="Move Up"><img src="<?php echo $imagepath;?>arrow_up.gif"></a>&nbsp;&nbsp;</td>
				<td valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=sort&prod_id=<?php echo $rs['id'];?>&order=<?php echo $rs['prod_order'];?>&move=down<?php echo (!empty($_GET['cat_id'])? '&prod_cat='.$_GET['cat_id'] : '').(!empty($_GET['count'])? '&count='.$_GET['count'] : '').(!empty($_GET['p'])? '&p='.$_GET['p'] : '');?>" title="Move Down"><img src="<?php echo $imagepath;?>arrow_down.gif"></a></td>
				<td align="center" valign="middle">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</td>
			<?php }?>
				<td valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=editproduct&prod_id=<?php echo $rs['id'].(!empty($_GET['cat_id'])? '&prod_cat='.$_GET['cat_id'] : '');?>" title="Edit"><!-- img src="<?php echo $imagepath;?>edit.png"-->Edit</a>&nbsp;&nbsp;</td>
				<td valign="middle"><a href="javascript:if(confirm('Are you sure want to delete this image?')){location='<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=delprod&prod_id=<?php echo $rs['id'];?>&prod_image=<?php echo $rs['prod_image'].(!empty($_GET['cat_id'])? '&prod_cat='.$_GET['cat_id'] : '');?>'}" title="Delete"><!-- img src="<?php echo $imagepath;?>del.png" -->Delete</a></td>
			</table>
		</td>
	</tr>
	<?php }}?>
	<tr>
		<td colspan="<?php echo ($_SESSION['uid']==99999?'7':'5');?>" align="left" valign="middle">
			<div style="float:left"><?php echo PageNav("SELECT * FROM ".$db_prefix."prods $filter $order", $pcount, $ppage, 'admincp.php?detail=manage_products'.(!empty($_GET['cat_id'])?"&cat_id=".$_GET['cat_id']:""));?></div>	  </td>
	    <td align="right" valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=addproduct<?php if(!empty($_GET['cat_id'])){echo "&prod_cat=".$_GET['cat_id'];}?>">Add New Product</a></td>
	</tr>
</table>
<div id="prodinfo" style="display:none"></div>
<?php
}
elseif($_GET['event'] == 'addproduct')
{
	if(isset($_POST['submitform']))
	{
		$prod_name = trim($_POST['prod_name']);
		$prod_order = trim($_POST['prod_order']);
		if(!empty($prod_name))
		{
			$qry = "INSERT INTO ".$db_prefix."prods(prod_title, prod_order) VALUES('$prod_name', $prod_order)";
			mysql_query($qry);
			header("location: ".$_SERVER['PHP_SELF']."?detail=manage_products");
		}
	}

	$qry = "SELECT prod_order FROM ".$db_prefix."prods ORDER BY prod_order DESC LIMIT 1";
	$res = mysql_query($qry);
	$rs = mysql_fetch_assoc($res);
	$new_order = intval($rs['prod_order'])+1;
?>
<script language="javascript">
function UploadAlert(val)
{
	if(val == 1)
	{
		alert("Product added successfully");
		location="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products<?php if(!empty($_GET['prod_cat'])){echo '&cat_id='.$_GET['prod_cat'];}?>";
	}
	else if(val == 2)
	{
		alert("File already exists. Please select a different file or try deleting the old file first.");
		document.frmAddProduct.submitform.disabled = false;
		document.getElementById('upfile').style.display = 'block';
		document.getElementById('uploading').style.display = 'none';
		document.getElementById("upfiletag").innerHTML = 'Select Product: ';
		getFileId();
		ResOptAlert();
	}
	else
	{
		alert("Product uploading failed. Please try again");
		document.frmAddProduct.submitform.disabled = false;
		document.getElementById('upfile').style.display = 'block';
		document.getElementById('uploading').style.display = 'none';
		document.getElementById("upfiletag").innerHTML = 'Select Product: ';
		getFileId();
		ResOptAlert();
	}
}

function FrmSubmit()
{
	if(ValidateForm())
	{
		document.frmAddProduct.submit();
		document.frmAddProduct.submitform.disabled = true;
		document.getElementById('upfile').style.display = 'none';
		document.getElementById('uploading').style.display = 'block';
		document.getElementById("upfiletag").innerHTML = 'Uploading... ';
		return true;
	}
	else
		return false;
}

function trim(stringToTrim) {
	return stringToTrim.replace(/^\s+|\s+$/g,"");
}

function ValidateForm()
{
	var errorlist = "";
	if(trim(document.frmAddProduct.prod_file.value) == "")
		errorlist = "\nPlease select an image file";
	if(trim(document.frmAddProduct.prod_id.value) == "")
		errorlist += "\nPlease enter product id";
	if(trim(document.frmAddProduct.prod_name.value) == "")
		errorlist += "\nPlease enter product name";
	if(trim(document.frmAddProduct.prod_desc.value) == "")
		errorlist += "\nPlease enter product description";
	if(document.frmAddProduct.prod_cat.disabled == false && document.frmAddProduct.prod_cat.value == "")
		errorlist += "\nPlease select a category";
	if(trim(document.frmAddProduct.prod_keyword.value) == "")
		errorlist += "\nPlease enter keywords";
		
	if(errorlist == "")
		return true;
	else
	{
		alert("Following errors have occured:\n"+errorlist);
		return false;
	}
}
</script>
<div style="position:absolute;left:-100000px;top:-100000px;width:1px;height:1px;"><iframe name="UploadWin" width="1" height="1"></iframe></div>
<p class="heading" style="margin-left:20px;">
Add Product
</p>
<table border="0" cellspacing="20">
	<tr>
		<td>
			<table border="1" cellspacing="0" cellpadding="5" class="bordered">
				<form name="frmAddProduct" action="<?php echo $includepath;?>upload.php" method="post" enctype="multipart/form-data" target="UploadWin" onSubmit="return FrmSubmit();">
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px" width="100"><div id="upfiletag">Select Image:</div></td><td style="" align="left"><div id="upfile"><input type="file" class="text" size="30" name="prod_file" id="prod_file" onChange="getFileId()"></div><div id="uploading" style="display:none"><img src="<?php echo $imagepath;?>uploading.gif"></div></td>
				</tr>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px">Product ID: </td><td style="" align="left"><input type="text" class="text" size="30" name="prod_id" id="prod_id"></td>
				</tr>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px">Product Name: </td><td style="" align="left"><input type="text" class="text" size="30" name="prod_name" id="prod_name" onChange="prod_preview(this)" onKeydown="prod_preview(this)" onKeyUp="prod_preview(this)" onFocus="toggle_preview(1)" onBlur="toggle_preview(0)"></td>
				</tr>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px">Category: </td>
					<td style="" align="left">
						<select class="text" <?php if(!empty($_GET['prod_cat'])){echo "name='prod_cat_tmp' disabled";}else{echo "name='prod_cat'";}?>>
							<option value="">Select Category</option>
							<option value="">__________________</option>
						<?php
							$qry = "SELECT * FROM ".$db_prefix."categories ORDER BY cat_title";
							$res = mysql_query($qry);
							while($rs = mysql_fetch_assoc($res))
							{
						?>
							<option value="<?php echo $rs['id'];?>" <?php if($_GET['prod_cat']==$rs['id']){echo "selected";}?>><?php echo $rs['cat_title'];?></option>
						<?php
							}
						?>
						</select>
						<?php if(!empty($_GET['prod_cat'])){echo "<input type=hidden name='prod_cat' value='".$_GET['prod_cat']."'>";}?>
					</td>
				</tr>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px" valign="top">Description: </td>
					<td style="" align="left">
						<textarea class="text" cols="50" rows="8" name="prod_desc"></textarea>
					</td>
				</tr>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px" valign="top">Tag/Keywords: </td>
					<td style="" align="left">
						<textarea class="text" cols="50" rows="8" name="prod_keyword"></textarea><br>
						(Insert keywords seperated by comma)
					</td>
				</tr>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px">Price: </td><td style="" align="left"><input type="text" class="text" size="30" name="price" id="price"></td>
				</tr>
				<?php if($_SESSION['uid'] == 99999){?>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px" valign="top">Producer: </td><td style="" align="left">
						<select name="producer" onChange="if(this.value=='-1'){document.getElementById('new_user').style.display='block'}else{document.getElementById('new_user').style.display='none'}" onkeyup="if(this.value=='-1'){document.getElementById('new_user').style.display='block'}else{document.getElementById('new_user').style.display='none'}">
							<option value="99999">Default</option>
							<option value="-1">New Producer</option>
							<?php
							$qrys = "SELECT DISTINCT uid FROM ".$db_prefix."prods WHERE uid<>99999";
							$ress = mysql_query($qrys);
							while($rss = mysql_fetch_assoc($ress))
							{
								$qry2 = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rss['uid'];
								$res2 = mysql_query($qry2);
								$rs2 = mysql_fetch_assoc($res2);
								echo '<option value="'.$rs2['id'].'">'.$rs2['uname'].'</option>';
							}
							?>
						</select>
						<div id="new_user" style="display:none;margin-top:15px;">
						<table border="0" cellpadding="3" cellspacing="0">
							<tr>
								<td align="left" valign="top">* Login name:</td>
								<td align="left"><input name="uname" id="uname" type="text" class="text" size="40"></td>
							</tr>
							<tr>
								<td align="left" valign="top">Password:</td>
								<td align="left" class="heading">123456</td>
							</tr>
							<tr>
								<td align="left" valign="top">Email:&nbsp;&nbsp;</td>
								<td align="left"><input name="email" id="email" type="text" class="text" size="40"></td>
							</tr>
							<tr>
								<td align="left" valign="top">First Name:&nbsp;&nbsp;</td>
								<td align="left"><input name="fname" id="fname" type="text" class="text" size="40"></td>
							</tr>
							<tr>
								<td align="left">Last Name:&nbsp;&nbsp;</td>
								<td align="left"><input name="lname" id="lname" type="text" class="text" size="40"></td>
							</tr>
							<tr>
								<td align="left" valign="top">Address:&nbsp;&nbsp;</td>
								<td align="left"><input name="address" id="address" type="text" class="text" size="40"></td>
							</tr>
							<tr>
								<td align="left" valign="top">Contact No.:&nbsp;&nbsp;</td>
								<td align="left"><input name="phone" id="phone" type="text" class="text" size="40"></td>
							</tr>
							<tr>
								<td align="left" valign="top">Age:&nbsp;&nbsp;</td>
								<td align="left"><input name="age" id="age" type="text" class="text" size="40"></td>
							</tr>
							<tr>
								<td align="left" valign="top">Gender:&nbsp;&nbsp;</td>
								<td align="left">
								<select name="gender" id="gender" class="text" style="width:225px;">
										<option value="">Select gender</option>
										<option value="">___________________</option>
										<option value="m">Male</option>
										<option value="f">Female</option>
								</select>
								</td>
							</tr>
							<tr>
								<td align="left" valign="top">* Location:&nbsp;&nbsp;</td>
								<td align="left">
								<?php
								$llist = Array('Dhaka', 'CHT', 'Jessore', 'Other');
								?>
								<select name="location" id="location" class="text" style="width:225px;">
										<option value="">Select a location</option>
										<option value="">___________________</option>
									<?php foreach($llist as $litem){?>
									<option value="<?php echo $litem;?>"><?php echo $litem;?></option>
									<?php }?>
								</select>
								</td>
							</tr>
							<tr>
								<td align="left" valign="top">Photo:&nbsp;&nbsp;</td>
								<td align="left"><input name="photo" id="photo" type="file" class="text"></td>
							</tr>
						</table>
						</div>
					</td>
				</tr>
				<?php }?>
				<tr>
					<td align="left" style="padding:5px 5px 5px 10px" colspan="2"><input type="checkbox" name="featured" id="featured" value="1">&nbsp;&nbsp;Promote this products/services under Shikor brand</td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" class="button" name="submitform" value="Add Product">&nbsp;&nbsp;<input name="cancel" type="button" class="button" value="Cancel" onClick="location='<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products<?php echo (!empty($_GET['prod_cat'])? '&cat_id='.$_GET['prod_cat'] : '');?>'"></td>
				</tr>
				<input type="hidden" name="uploaded" value="1">
				</form>
			</table>
		</td>
		<td valign="top">
			<div id="prod_prev_panel" style="visibility:hidden">
			<table cellspacing="0" cellpadding="0" border="0" width="168" height="216" bgcolor="#FFFFFF">
				<tr>
					<td colspan="3" background="<?php echo $imagepath;?>prod_top_bg.jpg" height="16"></td>
				</tr>
				<tr>
					<td style="width:7px;" background="<?php echo $imagepath;?>prod_left_bg.jpg"></td>
					<td height="161" width="154" align="center" valign="middle">
						<span class="heading">Your Product</span>
					</td>
					<td style="width:7px;" background="<?php echo $imagepath;?>prod_right_bg.jpg"></td>
				</tr>
				<tr>
					<td colspan="3" background="<?php echo $imagepath;?>prod_bottom_bg.jpg" height="39" align="center" valign="middle">
						<div id="prod_name_preview" class="product_label"></div>
					</td>
				</tr>
			</table>
			</div>
		</td>
	</tr>
</table>
<script language="javascript">
function getFileId(){
	var photofile = document.getElementById("prod_file").value;
	if(photofile != "")
	{
		var filename = photofile.split("\\");
		var filetitle = filename[filename.length-1].split(".");
		var fileId = filetitle[0];
		document.getElementById("prod_id").value = fileId;
	}
}

function prod_preview(elem)
{
	var preview_elem = document.getElementById('prod_name_preview');
	var label = elem.value;
	if(label.length > 50)
	{
		preview_elem.className = 'product_label_extra_small';
		label = label.substr(0, 25)+"<br>"+label.substr(25, 25)+"<br>"+label.substr(50);
	}
	else if(label.length > 40)
	{
		preview_elem.className = 'product_label_extra_small';
		label = label.substr(0, 25)+"<br>"+label.substr(25);
	}
	else if(label.length > 20)
	{
		preview_elem.className = 'product_label_small';
		label = label.substr(0, 20)+"<br>"+label.substr(20);
	}
	else
		preview_elem.className = 'product_label';
	preview_elem.innerHTML=label;
}

function toggle_preview(opt)
{
	var elem = document.getElementById('prod_prev_panel');
	if(opt == 1)
		elem.style.visibility='visible';
	else
		elem.style.visibility='hidden';
}
</script>
<?php
}
elseif($_GET['event'] == 'editproduct')
{
	if($_POST['Uploaded'] == 1)
	{
		$prod_id = $_GET['prod_id'];
		$prod_title = $_POST['prod_id'];
		$uid = $_POST['uid'];
		$prod_name = $_POST['prod_name'];
		$prod_desc = $_POST['prod_desc'];
		$prod_cat = $_POST['prod_cat'];
		$prod_keyword = $_POST['prod_keyword'];
		$prod_image = $_FILES['prod_image'];
		$price = $_POST['price'];
		
		$qry1 = "UPDATE ".$db_prefix."prods SET
		uid=$uid, prod_id='$prod_title', prod_name='$prod_name',
		prod_cat=$prod_cat, prod_desc='$prod_desc',
		price='$price'
		WHERE id=$prod_id";
		
		$res1 = mysql_query($qry1);
		//die($qry1);
		if($res1 != false)
		{
			if(trim(str_replace(",", "", $prod_keyword)) != "")
			{
			mysql_query("DELETE FROM ".$db_prefix."prods_keyword WHERE pid=$prod_id");
			$keywords = explode(",", $prod_keyword);
			foreach($keywords as &$keyword)
				if(trim($keyword) != '')
					mysql_query("INSERT INTO ".$db_prefix."prods_keyword(pid, keyword) VALUES(".$prod_id.", '".strtolower(trim($keyword))."')");
			}
			
			if(!empty($prod_image['name']))
			{
				$ret = move_uploaded_file($prod_image['tmp_name'], $imguploadpath."tmp_".$prod_image['name']);

				if($ret != false)
				{
					require_once($includepath."photo_resize.php");
				
					$qryifile = "SELECT * FROM ".$db_prefix."prods WHERE id=".$prod_id;
					$rsifile = mysql_fetch_assoc(mysql_query($qryifile));
					@unlink($imguploadpath.$rsifile['prod_image']);
					@unlink($imguploadpath."thumb/".$rsifile['prod_image']);
					
					$newimg=new thumbnail($imguploadpath."tmp_".$prod_image['name']);
					$newimg->size_auto(500);
					$newimg->jpeg_quality(100);
					$up = $newimg->save($imguploadpath.$prod_image['name']);
					
					$thumb=new thumbnail($imguploadpath."tmp_".$prod_image['name']);
					$thumb->size_auto(144);
					$thumb->jpeg_quality(100);
					$up = $thumb->save($imguploadpath."thumb/".$prod_image['name']);
	
					@unlink($imguploadpath."tmp_".$prod_image['name']);

					@mysql_query("UPDATE ".$db_prefix."prods SET prod_image='".$prod_image['name']."' WHERE id=".$prod_id);
				}
			}

			header("location: ".$_SERVER['PHP_SELF']."?detail=manage_products".(!empty($_GET['prod_cat'])? '&cat_id='.$_GET['prod_cat'] : ''));
			
		}
	}

	$prod_id = $_GET['prod_id'];
	$qry = "SELECT * FROM ".$db_prefix."prods WHERE id=$prod_id";
	$res = mysql_query($qry);
	$rs = mysql_fetch_assoc($res);
	
?>
<script language="javascript">
function trim(stringToTrim) {
	return stringToTrim.replace(/^\s+|\s+$/g,"");
}

function ValidateForm()
{
	var errorlist = "";
	if(trim(document.frmAddProduct.prod_id.value) == "")
		errorlist += "\nPlease enter product id";
	if(trim(document.frmAddProduct.prod_name.value) == "")
		errorlist += "\nPlease enter product name";
	if(trim(document.frmAddProduct.prod_desc.value) == "")
		errorlist += "\nPlease enter product description";
	if(trim(document.frmAddProduct.prod_keyword.value) == "")
		errorlist += "\nPlease enter keywords";
		
	if(errorlist == "")
	{
		alert(document.frmAddProduct.action);
		return true;
	}
	else
	{
		alert("Following errors have occured:\n"+errorlist);
		return false;
	}
}
</script>
<p class="heading" style="margin-left:20px;">
Edit Product
</p>
<form name="frmAddProduct" method="post" action="" onSubmit="return ValidateForm()" enctype="multipart/form-data">
<table border="0" cellspacing="20">
	<tr>
		<td>
			<table border="1" cellspacing="0" cellpadding="5" class="bordered">
				<tr>
					<td width="80" align="right" style="padding:5px 5px 5px 10px">Product ID: </td><td style="" align="left"><input type="text" class="text" size="30" name="prod_id" id="prod_id" value="<?php echo $rs['prod_id'];?>"></td>
				</tr>
				<tr>
					<td width="80" align="right" style="padding:5px 5px 5px 10px">Product Name: </td><td style="" align="left"><input type="text" class="text" size="30" name="prod_name" id="prod_name" value="<?php echo $rs['prod_name'];?>" onChange="prod_preview(this)" onKeydown="prod_preview(this)" onKeyUp="prod_preview(this)"></td>
				</tr>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px">Category: </td>
					<td style="" align="left">
						<select class="text" name='prod_cat'>
						<?php
							$qry2 = "SELECT * FROM ".$db_prefix."categories ORDER BY cat_title";
							$res2 = mysql_query($qry2);
							while($rs2 = mysql_fetch_assoc($res2))
							{
						?>
							<option value="<?php echo $rs2['id'];?>" <?php if($rs['prod_cat']==$rs2['id']){echo "selected";}?>><?php echo $rs2['cat_title'];?></option>
						<?php
							}
						?>
						</select>
					</td>
				</tr>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px" valign="top">Description: </td>
					<td style="" align="left">
						<textarea class="text" cols="50" rows="8" name="prod_desc"><?php echo $rs['prod_desc'];?></textarea>
					</td>
				</tr>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px" valign="top">Keywords: </td>
					<td style="" align="left">
					<?php
							$qry2 = "SELECT * FROM ".$db_prefix."prods_keyword WHERE pid=".$rs['id']." ORDER BY keyword";
							$res2 = mysql_query($qry2);
							while($rs2 = mysql_fetch_assoc($res2))
								$keywords .= ", ".$rs2['keyword'];
							$keywords = substr($keywords, 2);
					?>
						<textarea class="text" cols="50" rows="8" name="prod_keyword"><?php echo $keywords;?></textarea><br>
						(Insert keywords seperated by comma)
					</td>
				</tr>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px">Price: </td><td style="" align="left"><input type="text" class="text" size="30" name="price" id="price" value="<?php echo $rs['price'];?>"></td>
				</tr>
				<?php if($_SESSION['uid']==99999){?>
				<tr>
					<td align="right" style="padding:5px 5px 5px 10px">Producer: </td>					
					<td>
					<select name="uid" class="text" id="text" style="width:180px;">
						<option value="99999">Default</option>
						<?php
						$qrys = "SELECT * FROM ".$db_prefix."userinfo ORDER BY uname ASC";
						$ress = mysql_query($qrys);
						while($rss = mysql_fetch_assoc($ress))
							echo '<option value="'.$rss['id'].'"'.($rs['uid']==$rss['id']?' selected':'').'>'.$rss['uname'].'</option>';
						?>
					</select>
					</td>			
				</tr>
				<?php }?>
				<tr>
					<td valign="top" align="right">New Product Image: </td>
					<td>
						<input type="file" name="prod_image" size="30"><br>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="button" class="button" name="submitform" value="Update Product" onClick="document.frmAddProduct.submit()">&nbsp;&nbsp;<input name="cancel" type="button" class="button" value="Cancel" onClick="location='<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products'"></td>
				</tr>
				<input type="hidden" name="Uploaded" value="1">
			</table>
		</td>
		<td valign="top">
			<table cellspacing="0" cellpadding="0" border="0" width="168" height="216" bgcolor="#FFFFFF">
				<tr>
					<td colspan="3" background="<?php echo $imagepath;?>prod_top_bg.jpg" height="16"></td>
				</tr>
				<tr>
					<td style="width:7px;" background="<?php echo $imagepath;?>prod_left_bg.jpg"></td>
					<td height="161" width="154" align="center" valign="middle">
						<img src="<?php if(file_exists($imgupthumbpath.$rs['prod_image'])){echo $imgupthumbpath.$rs['prod_image'];}else{echo $imagepath."nopicture.gif";}?>">
					</td>
					<td style="width:7px;" background="<?php echo $imagepath;?>prod_right_bg.jpg"></td>
				</tr>
				<tr>
					<td colspan="3" background="<?php echo $imagepath;?>prod_bottom_bg.jpg" height="39" align="center" valign="middle">
						<div id="prod_name_preview" class="product_label"><?php echo $rs['prod_name'];?></div>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>
<script type="text/javascript">
function prod_preview(elem)
{
	var preview_elem = document.getElementById('prod_name_preview');
	var label = elem.value;
	if(label.length > 50)
	{
		preview_elem.className = 'product_label_smallest';
		label = label.substr(0, 25)+"<br>"+label.substr(25, 25)+"<br>"+label.substr(50);
	}
	else if(label.length > 40)
	{
		preview_elem.className = 'product_label_extra_small';
		label = label.substr(0, 25)+"<br>"+label.substr(25);
	}
	else if(label.length > 20)
	{
		preview_elem.className = 'product_label_small';
		label = label.substr(0, 20)+"<br>"+label.substr(20);
	}
	else
		preview_elem.className = 'product_label';
	preview_elem.innerHTML=label;
}
</script>
<?php
}
elseif($_GET['event'] == 'allowproduct' && $_SESSION['uid'] == 99999)
{

if(!empty($_GET['cat_id']))
{
	$filter = "WHERE prod_cat=".$_GET['cat_id'];
	$qry2 = "SELECT * FROM ".$db_prefix."categories WHERE id=".$_GET['cat_id'];
	$res2 = mysql_query($qry2);
	$rs = mysql_fetch_assoc($res2);
}

$filter = "WHERE allowed=0";

if(!empty($_GET['prod_order']))
	$order = "ORDER BY ".$_GET['prod_order']." ASC";
else
	$order = "ORDER BY prod_order DESC";


$qrycat = "SELECT * FROM ".$db_prefix."categories ORDER by cat_title ASC";
$rescat = mysql_query($qrycat);
$cat_menu = "<select onchange='SortCategory(this.value)'><option value=''>All</option>";
while($rscat = mysql_fetch_assoc($rescat))
	$cat_menu .= "<option value='".$rscat['id']."'".(($rscat['id']==$_GET['cat_id'])? ' selected' : '').">".$rscat['cat_title']."</option>";
$cat_menu .= "</select>";

if(empty($_GET['p']))
	$ppage = 1;
else
	$ppage = $_GET['p'];
if(empty($_GET['count']))
	$pcount = 10;
else
	$pcount = $_GET['count'];

$limit = "LIMIT ".(($ppage-1)*$pcount).", ".$pcount;

$qry = "SELECT * FROM ".$db_prefix."prods $filter $order $limit";
$res = mysql_query($qry);
?>
<script language="javascript">
function SortCategory(opt)
{
	if(opt == '')
		location = 'admincp.php?detail=manage_products&event=allowproduct';
	else
		location = 'admincp.php?detail=manage_products&event=allowproduct&cat_id='+opt;
}
</script>
<p class="heading" style="margin-left:20px;">
<div style="width:95%;margin-left:25px">
<div style="float:left">Manage Products of Category: <?php echo $cat_menu;?></div>
<div style="float:right">Total photo(s) in category: <?php echo mysql_num_rows(mysql_query("SELECT * FROM ".$db_prefix."prods $filter $order"));?></div>
<br><br>
<div style="border-top:1px dashed #cccccc;padding-top:10px;margin-bottom:10px">
	<div style="float:left">
		<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products<?php if(!empty($_GET['cat_id'])){echo "&prod_cat=".$_GET['cat_id'];}?>">Return to Products Gallery</a>
	</div>
	<div style="float:right">
		<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=addproduct<?php if(!empty($_GET['cat_id'])){echo "&prod_cat=".$_GET['cat_id'];}?>">Add New Product</a>
	</div>
</div>
<br>
</div>
</p>
<table border="1" cellspacing="0" cellpadding="5" width="95%" class="bordered" align="center">
	<tr class="light_bg">
		<th align="left" style="padding:5px 10px 5px 10px">Product ID </th>
		<th align="left" style="padding:5px 10px 5px 10px">Product Name</th>
		<th>Added By</th>
		<th>Category</th>
		<th>Thumbnail</th>
		<th>Allowed</th>
		<th>Manage</th>
	</tr>
	<?php if(mysql_num_rows($res) > 0){
		while($rs = mysql_fetch_assoc($res)){?>
	<tr>
		<td align="cent" style="padding:5px 10px 5px 10px">
			<?php echo $rs['prod_id'];?>
		</td>
		<td align="cent" style="padding:5px 10px 5px 10px">
			<?php echo $rs['prod_name'];?>
		</td>
		<td align="center" style="">
			<?php
			if($rs['uid'] == 99999)
				echo "Admin";
			else
			{
				$rsuser = mysql_fetch_assoc(mysql_query("SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs['uid']));
				echo $rsuser['uname'];
			}	
			?>
		</td>
		<td align="center" style="">
			<?php
			 $cat_id = $rs['prod_cat'];
			 $qry2 = "SELECT * FROM ".$db_prefix."categories WHERE id=$cat_id";
			 $res2 = mysql_query($qry2);
			 $rs2 = mysql_fetch_assoc($res2);
			 echo '<a href="admincp.php?detail=manage_products&cat_id='.$rs2['id'].'">'.$rs2['cat_title'].'</a>';
			?>
		</td>
		<td align="center" style="">
			<?php
			if(file_exists($imgupthumbpath.$rs['prod_image'])){
				list($width, $height) = getimagesize($imgupthumbpath.$rs['prod_image']);
				if($width > $height)
					$imgdim = "width='100'";
				else
					$imgdim = "height='100'";
			}
			?>
			<a href="#TB_inline?height=300&width=400&inlineId=prodinfo" class="thickbox" onClick="productInfo(<?php echo $rs['id'];?>)"><img src="<?php if(file_exists($imgupthumbpath.$rs['prod_image'])){echo $imgupthumbpath.$rs['prod_image'];}else{echo $imagepath."nopicture.gif";}?>" <?php echo $imgdim;?>></a>
		</td>
		<td align="center" valign="middle">
			<div id="allowitem_<?php echo $rs['id'];?>">
			<?php
			if($rs['allowed'] == 1)
				echo '<a href="javascript:toggleAllow('.$rs['id'].', 0)"><img src="'.$imagepath.'tick.png"></a>';
			else
				echo '<a href="javascript:toggleAllow('.$rs['id'].', 1)"><img src="'.$imagepath.'cross.png"></a>';
			?>
			</div>
		</td>
		<td align="center" valign="middle" style="">
			<table border="0" cellpadding="0" cellspacing="0" class="noborder">
			<?php if(!empty($_GET['cat_id'])){?>
				<td valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=sort&prod_id=<?php echo $rs['id'];?>&order=<?php echo $rs['prod_order'];?>&move=up<?php echo (!empty($_GET['cat_id'])? '&prod_cat='.$_GET['cat_id'] : '').(!empty($_GET['count'])? '&count='.$_GET['count'] : '').(!empty($_GET['p'])? '&p='.$_GET['p'] : '');?>" title="Move Up"><img src="<?php echo $imagepath;?>arrow_up.gif"></a>&nbsp;&nbsp;</td>
				<td valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=sort&prod_id=<?php echo $rs['id'];?>&order=<?php echo $rs['prod_order'];?>&move=down<?php echo (!empty($_GET['cat_id'])? '&prod_cat='.$_GET['cat_id'] : '').(!empty($_GET['count'])? '&count='.$_GET['count'] : '').(!empty($_GET['p'])? '&p='.$_GET['p'] : '');?>" title="Move Down"><img src="<?php echo $imagepath;?>arrow_down.gif"></a></td>
				<td align="center" valign="middle">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</td>
			<?php }?>
				<td valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=editproduct&prod_id=<?php echo $rs['id'].(!empty($_GET['cat_id'])? '&prod_cat='.$_GET['cat_id'] : '');?>" title="Edit"><!-- img src="<?php echo $imagepath;?>edit.png"-->Edit</a>&nbsp;&nbsp;</td>
				<td valign="middle"><a href="javascript:if(confirm('Are you sure want to delete this image?')){location='<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=delprod&prod_id=<?php echo $rs['id'];?>&prod_image=<?php echo $rs['prod_image'].(!empty($_GET['cat_id'])? '&prod_cat='.$_GET['cat_id'] : '');?>'}" title="Delete"><!-- img src="<?php echo $imagepath;?>del.png" -->Delete</a></td>
			</table>
		</td>
	</tr>
	<?php }}?>
	<tr>
		<td colspan="6" align="left" valign="middle">
			<div style="float:left"><?php echo PageNav("SELECT * FROM ".$db_prefix."prods $filter $order", $pcount, $ppage, 'admincp.php?detail=manage_products'.(!empty($_GET['cat_id'])?"&cat_id=".$_GET['cat_id']:""));?></div>	  </td>
	    <td align="right" valign="middle"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&event=addproduct<?php if(!empty($_GET['cat_id'])){echo "&prod_cat=".$_GET['cat_id'];}?>">Add New Product</a></td>
	</tr>
</table>
<div id="sendemail" style="display:none">
	<br>
	<div class="heading" style="margin-left:10px;margin-bottom:10px;text-decoration:underline">Order by email:</div>
	<div style="margin-left:10px;margin-bottom:10px;font-weight:bold">Ordered item code: <?php echo $rs['c_id'];?></div>
	<table border="0" cellpadding="0" cellspacing="7">
		<form name="frmOrder" id="frmOrder" method="post" action="" onSubmit="return false;">
		<tr>
			<td>Your Name:</td>
		    <td><input type="text" class="text" name="name" id="name" style="width:200px"></td>
		</tr>
		<tr>
			<td>Company:</td>
		    <td><input type="text" class="text" name="company" id="company" style="width:200px"></td>
		</tr>
		<tr>
		  <td>Your Email:</td>
		  <td><input type="text" class="text" name="email" id="email" style="width:200px"></td>
	  </tr>
		<tr>
		  <td>Contact No.:</td>
		  <td><input type="text" class="text" name="phone" id="phone" style="width:200px"></td>
	  </tr>
		<tr>
		  <td valign="top">Comment:</td>
		  <td><textarea class="text" name="comment" id="comment" style="width:200px;height:70px"></textarea></td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td><input type="submit" class="button" name="frmSubmit" id="frmSubmit" value="Order Now"></td>
	  </tr>
	  <input type="hidden" name="item_id" id="item_id" value="<?php echo $rs['c_id'];?>">
	  </form>
	</table>
</div>
<div id="prodinfo" style="display:none">test</div>
<?php
}
elseif($_GET['event'] == 'sort')
{

	$move = $_GET['move'];
	$prod_id = $_GET['prod_id'];
	$prod_order = $_GET['order'];
	$prod_cat = $_GET['prod_cat'];
	if($move == "down")
		$qry = "SELECT * FROM ".$db_prefix."prods WHERE prod_order < $prod_order AND prod_cat=$prod_cat ORDER BY prod_order DESC LIMIT 1";
	elseif($move == "up")
		$qry = "SELECT * FROM ".$db_prefix."prods WHERE prod_order > $prod_order AND prod_cat=$prod_cat ORDER BY prod_order ASC LIMIT 1";
	
	$res = mysql_query($qry);
	if(mysql_num_rows($res)>0){
		//mysql_data_seek($res, 1);
		$rs = mysql_fetch_assoc($res);
		$pagetomoveto = $rs['prod_order'];
		$sqlmovefar="UPDATE ".$db_prefix."prods SET prod_order = 99 WHERE id = $prod_id";
		$movefar = mysql_query($sqlmovefar) or die ("Cant move entry far");
		$sqlmove2="UPDATE ".$db_prefix."prods SET prod_order = ".$prod_order." WHERE id = ".$rs['id'];
		$move2 = mysql_query($sqlmove2)or die ("Cant move replacement entry");
		$sqlmove="UPDATE ".$db_prefix."prods SET prod_order = $pagetomoveto WHERE id = $prod_id";
		$move = mysql_query($sqlmove)or die ("Cant move entry into position");
	}

	header("location: ".$_SERVER['PHP_SELF']."?detail=manage_products".(!empty($_GET['prod_cat'])? '&cat_id='.$_GET['prod_cat'] : '').(!empty($_GET['count'])? '&count='.$_GET['count'] : '').(!empty($_GET['p'])? '&p='.$_GET['p'] : ''));
	
	//echo $qry."<br>".$sqlmovefar."<br>".$sqlmove2."<br>".$sqlmove;
}
elseif($_GET['event'] == 'delprod')
{
	$prod_id = $_GET['prod_id'];
	$prod_image = $_GET['prod_image'];
	$qry = "DELETE FROM ".$db_prefix."prods WHERE id=$prod_id";
	mysql_query($qry);
	$qry2 = "DELETE FROM ".$db_prefix."prods_keyword WHERE pid=$prod_id";
	mysql_query($qry2);
	@unlink($imguploadpath.$prod_image);
	@unlink($imgupthumbpath.$prod_image);
	header("location: ".$_SERVER['PHP_SELF']."?detail=manage_products".(!empty($_GET['prod_cat'])? '&cat_id='.$_GET['prod_cat'] : ''));
}
elseif($_GET['event'] == 'allowitem')
{
	$item = $_GET['item_id'];
	$allowed = $_GET['allowed'];
	$ret = mysql_query("UPDATE ".$db_prefix."prods SET allowed=".$allowed." WHERE id=".$item);
	if($ret == false)
		die('failed');
	else
	{
		if($allowed == 1)
			die('added');
		else
			die('removed');
	}
}
elseif($_GET['event'] == 'iteminfo')
{
	$item = $_GET['item_id'];
	$qry = "SELECT * FROM ".$db_prefix."prods WHERE id=".$item;
	$res = mysql_query($qry);
	$rs = mysql_fetch_assoc($res);
?>
<table border="0" cellspacing="15" width="400">
	<tr>
		<td valign="top">
			<table cellspacing="0" cellpadding="0" border="0" width="168" height="216" bgcolor="#FFFFFF">
				<tr>
					<td colspan="3" background="<?php echo $imagepath;?>prod_top_bg.jpg" height="16"></td>
				</tr>
				<tr>
					<td style="width:7px;" background="<?php echo $imagepath;?>/prod_left_bg.jpg"></td>
					<td height="161" width="154" align="center" valign="middle">
						<img src="<?php if(file_exists($imgupthumbpath.$rs['prod_image'])){echo $newimgupthumbpath.$rs['prod_image'];}else{echo $imagepath."nopicture.gif";}?>">
					</td>
					<td style="width:7px;" background="<?php echo $imagepath;?>prod_right_bg.jpg"></td>
				</tr>
				<tr>
					<td colspan="3" background="<?php echo $imagepath;?>prod_bottom_bg.jpg" height="39" align="center" valign="middle">
						<?php
						$label = $rs['prod_name'];
						if(strlen($label) > 50)
						{
							$labelClassName = 'product_label_smallest';
							$label = substr($label, 0, 25)."<br>".substr($label, 25, 25)."<br>".substr($label, 50);
						}
						else if(strlen($label) > 40)
						{
							$labelClassName = 'product_label_extra_small';
							$label = substr($label, 0, 25)."<br>".substr($label, 25);
						}
						else if(strlen($label) > 20)
						{
							$labelClassName = 'product_label_small';
							$label = substr($label, 0, 20)."<br>".substr($label, 20);
						}
						else
							$labelClassName = 'product_label';
							
						echo "<div class='$labelClassName'>$label</div>";
						?>
					</td>
				</tr>
			</table>
		</td>
		<td valign="top">
			<b>Product Name</b>:<br>
			<?php echo $rs['prod_name']?><br><br>
			<b>Producer</b><br>
			<?php
			if($rs['uid'] == 99999)
				echo $sitename." Admin";
			else
			{
				$qryuser = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs['uid'];
				$resuser = mysql_query($qryuser);
				$rsuser = mysql_fetch_assoc($resuser);
				echo "<a class='heading' href='index.php?detail=profile&profile_id=".$rsuser['id']."' target='_blank'>".$rsuser['uname']."</a>";
			}
			?>
			<br><br>
			<b>Price</b>:<br>
			<?php echo (empty($rs['price'])?'N/A':$rs['price']);?><br><br><br>
		</td>
	</tr>
</table>
<?php
}

?>