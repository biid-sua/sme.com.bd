<?php 
	if(isset($_POST['btnSub'])){
	$sqlu="update ".$db_prefix."help set text='$_POST[txtHelp]' where id=$_GET[cat_id]";
	mysql_query($sqlu);
	if(mysql_query($sqlu)==true){
		header("Location:admincp.php?detail=manage_help");
		exit();
		}
	}
	if(isset($_POST['btnCancel'])){
		header("Location:admincp.php?detail=manage_help");
		exit();
	}
?>
<p class="heading" style="margin-left:20px;">Manage help</p>
<div style="padding:10px 0px 20px 20px;">
<?php if($_GET['event']=='edit'){
	$sqlh="select * from ".$db_prefix."help where id=$_GET[cat_id]";
	$exeh=mysql_query($sqlh);
	$num=mysql_num_rows($exeh);
	$rs=mysql_fetch_array($exeh);
	if($num > 0){
	?>
<table width="500" border="1" cellspacing="0" cellpadding="0" class="bordered">
<form name="frmHelp" method="post">
  <tr>
    <td width="100" style="padding:5px 10px 5px 10px">Title :</td>
    <td style="padding:5px 10px 5px 10px"><?php echo "$rs[title]";?></td>
  </tr>
  <tr>
    <td style="padding:5px 10px 5px 10px" valign="top">Text :</td>
    <td style="padding:5px 10px 5px 10px"><textarea name="txtHelp" rows="10" cols="50"><?php echo "$rs[text]";?></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td style="padding:5px 10px 5px 10px"><input type="submit" name="btnSub" class="button" value="Update">&nbsp;&nbsp;&nbsp;<input type="submit" name="btnCancel" value="Cancel" class="button"></td>
  </tr>
</form>
</table>
<?php } 
	}
else{
	$sqlh="select * from ".$db_prefix."help";
	$exeh=mysql_query($sqlh);
	$num=mysql_num_rows($exeh);
?>
<table border="1" cellspacing="0" cellpadding="5" width="400" class="bordered" align="left">
	<tr class="light_bg">
		<th align="left" style="padding:5px 10px 5px 10px">Category Name</th>		
		<th>Manage</th>
	</tr>
	<?php if($num > 0){
		while($rs = mysql_fetch_array($exeh)){?>
	<tr>
		<td align="cent" style="padding:5px 10px 5px 10px"><?php echo $rs['title'];?></td>		
		<td align="center">			
			<a href="<?php echo $_SERVER['PHP_SELF'];?>?detail=manage_help&event=edit&cat_id=<?php echo $rs['id'];?>">Edit</a>			
		</td>
	</tr>
	<?php }}?>	
</table>
<?php }?>
</div>