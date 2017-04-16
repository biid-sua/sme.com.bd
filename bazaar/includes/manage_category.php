<?php
require_once("antihack.php");
require_once($adminsecuritycheck);

if(empty($_GET['event']))
{

$qry = "SELECT * FROM ".$db_prefix."categories ORDER BY cat_order";
$res = mysql_query($qry);
?>
<p class="heading" style="margin-left:20px;">
Manage Categories
</p>
<table border="1" cellspacing="0" cellpadding="5" width="95%" class="bordered" align="center">
	<tr class="light_bg">
		<th align="left" style="padding:5px 10px 5px 10px">Category Name</th>
		<th style="padding:5px 10px 5px 10px">Products</th>
		<!-- th style=";border-right:1px solid #cccccc">Sort Order</th --><th style="">Manage</th>
	</tr>
	<?php if(mysql_num_rows($res) > 0){
		while($rs = mysql_fetch_assoc($res)){?>
	<tr>
		<td align="center" style="padding:5px 10px 5px 10px">
			<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_products&cat_id=<?php echo $rs['id'];?>"><?php echo $rs['cat_title'];?></a>
		</td>
		<!-- td align="center" style="">
			<?php echo $rs['cat_order'];?>
		</td -->
		<td align="center" style="">
			<?php
				$qry1 = "SELECT * FROM ".$db_prefix."prods WHERE prod_cat=".$rs['id'];
				$res1 = mysql_query($qry1);
				echo mysql_num_rows($res1);
			?>
		</td>
		<td align="center">
			<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_category&event=sort&cat_id=<?php echo $rs['id'];?>&order=<?php echo $rs['cat_order'];?>&move=up"><img src="<?php echo $imagepath;?>arrow_up.gif"></a>&nbsp;
			<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_category&event=sort&cat_id=<?php echo $rs['id'];?>&order=<?php echo $rs['cat_order'];?>&move=down"><img src="<?php echo $imagepath;?>arrow_down.gif"></a>
			&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
			<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_category&event=editcategory&cat_id=<?php echo $rs['id'];?>">Edit</a>
			<a href="javascript:if(confirm('Are you sure want to delete this category?')){location='<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_category&event=delcategory&cat_id=<?php echo $rs['id'];?>'}">Delete</a>
		</td>
	</tr>
	<?php }}?>
	<tr>
		<td colspan="3" align="right"><a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_category&event=addcategory">Add New Category</a></td>
	</tr>
</table>
<?php
}
elseif($_GET['event'] == 'addcategory')
{

	if(isset($_POST['submitform']))
	{
		$cat_title = trim($_POST['cat_title']);
		$cat_order = trim($_POST['cat_order']);
		if(!empty($cat_title))
		{
			$qry = "INSERT INTO ".$db_prefix."categories(cat_title, cat_order) VALUES('$cat_title', $cat_order)";
			mysql_query($qry);
			header("location: ".$_SERVER['PHP_SELF']."?detail=manage_category");
		}
	}

	$qry = "SELECT cat_order FROM ".$db_prefix."categories ORDER BY cat_order DESC LIMIT 1";
	$res = mysql_query($qry);
	$rs = mysql_fetch_assoc($res);
	$new_order = intval($rs['cat_order'])+1;
?>
<p class="heading" style="margin-left:20px;">
Add Category
</p>
<table border="1" cellspacing="0" cellpadding="5" class="bordered" style="margin-left:20px; ">
	<form action="" method="post">
	<tr>
		<td align="right" style="padding:5px 5px 5px 10px">Category Name: </td><td style="" align="left"><input type="text" class="text" size="30" name="cat_title" id="cat_title"></td>
	</tr>
	<!-- tr>
		<td align="right" style="padding:5px 5px 5px 10px">Sort Order: </td><td style="" align="left"><input type="text" class="text" size="30" name="cat_order" value="<?php echo $new_order;?>"></td>
	</tr -->
	<tr>
		<td colspan="2" align="right"><input type="submit" class="button" name="submitform" value="Add Category">&nbsp;&nbsp;<input type="button" class="button" value="Cancel" onClick="location='<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_category'"></td>
	</tr>
	<input type="hidden" name="cat_order" value="<?php echo $new_order;?>">
	</form>
</table>
<script type="text/javascript">
document.getElementById('cat_title').focus();
</script>
<?php
}
elseif($_GET['event'] == 'editcategory')
{

	if(isset($_POST['submitform']))
	{
		$cat_id = trim($_POST['cat_id']);
		$cat_title = trim($_POST['cat_title']);
		//$cat_order = trim($_POST['cat_order']);
		if(!empty($cat_title))
		{
			$qry = "UPDATE ".$db_prefix."categories SET cat_title='$cat_title' WHERE id=$cat_id";
			mysql_query($qry);
			header("location: ".$_SERVER['PHP_SELF']."?detail=manage_category");
		}
	}

	$cat_id = $_GET['cat_id'];
	$qry = "SELECT * FROM ".$db_prefix."categories WHERE id=$cat_id";
	$res = mysql_query($qry);
	$rs = mysql_fetch_assoc($res);
?>
<p class="heading" style="margin-left:20px;">
Edit Category
</p>
<table border="1" cellspacing="0" cellpadding="5" class="bordered" style="margin-left:20px; ">
	<form action="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_category&event=editcategory" method="post">
	<tr>
		<td align="right" style="padding:5px 5px 5px 10px">Category Name: </td><td style="" align="left"><input type="text" class="text" size="30" name="cat_title" value="<?php echo $rs['cat_title'];?>"></td>
	</tr>
	<!-- tr>
		<td align="right" style="padding:5px 5px 5px 10px">Sort Order: </td><td style="" align="left"><input type="text" class="text" size="30" name="cat_order" value="<?php echo $rs['cat_order'];?>"></td>
	</tr -->
	<tr>
		<td colspan="2" align="right"><input type="submit" class="button" name="submitform" value="Update Category">&nbsp;&nbsp;<input type="button" class="button" value="Cancel" onClick="location='<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_category'"></td>
	</tr>
	<input type="hidden" name="cat_id" value="<?php echo $cat_id;?>">
	</form>
</table>
<?php
}
elseif($_GET['event'] == 'sort')
{

	$move = $_GET['move'];
	$cat_id = $_GET['cat_id'];
	$cat_order = $_GET['order'];
	if($move == "down")
		$qry = "SELECT * FROM ".$db_prefix."categories WHERE cat_order > $cat_order ORDER BY cat_order ASC LIMIT 1";
	elseif($move == "up")
		$qry = "SELECT * FROM ".$db_prefix."categories WHERE cat_order < $cat_order ORDER BY cat_order DESC LIMIT 1";
	
	$res = mysql_query($qry);
	if(mysql_num_rows($res)>0){
		$rs = mysql_fetch_assoc($res);
		$pagetomoveto = $rs['cat_order'];
		$sqlmovefar="UPDATE ".$db_prefix."categories SET cat_order = 99 WHERE id = $cat_id";
		$movefar = mysql_query($sqlmovefar) or die ("Cant move entry far");
		$sqlmove2="UPDATE ".$db_prefix."categories SET cat_order = ".$cat_order." WHERE id = ".$rs['id'];
		$move2 = mysql_query($sqlmove2)or die ("Cant move replacement entry");
		$sqlmove="UPDATE ".$db_prefix."categories SET cat_order = $pagetomoveto WHERE id = $cat_id";
		$move = mysql_query($sqlmove)or die ("Cant move entry into position");
	}

	header("location: ".$_SERVER['PHP_SELF']."?detail=manage_category");
}
elseif($_GET['event'] == 'delcategory')
{
	$cat_id = $_GET['cat_id'];
	$qry = "DELETE FROM ".$db_prefix."categories WHERE id=$cat_id";
	mysql_query($qry);
	header("location: ".$_SERVER['PHP_SELF']."?detail=manage_category");
}
?>