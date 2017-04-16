<?php
require_once("antihack.php");
require_once($mainconn);

if(!empty($_GET['profile_id']))
{
	$uid = $_GET['profile_id'];
	$qryuser = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$uid;
	$resuser = mysql_query($qryuser);
	$rsuser = mysql_fetch_assoc($resuser);
?>
<table border="0" cellspacing="20" cellpadding="0">
  <tr>
  	<?php if(file_exists($imguploadpath."users/".$rsuser['photo'])){;?>
    <td align="center" valign="top">
		<img src="<?php echo $imguploadpath."users/".$rsuser['photo'];?>" style="border:1px solid #aeaeae ">
	</td>
	<?php }?>
    <td align="left" valign="top">
		<table border="0" cellspacing="10" cellpadding="0">
		<?php if(!empty($rsuser['fname'])){?>
		  <tr>
			<td><strong>Name:</strong></td>
			<td><?php echo $rsuser['fname']." ".$rsuser['lname'];?></td>
		  </tr>
		 <?php
		 }
		 if(!empty($rsuser['address'])){
		 ?>
		  <tr>
			<td><strong>Address:</strong></td>
			<td><?php echo $rsuser['address'];?></td>
		  </tr>
		 <?php
		 }
		 if(!empty($rsuser['location'])){
		 ?>
		  <tr>
			<td><strong>Localtion:</strong></td>
			<td><?php echo $rsuser['location'];?></td>
		  </tr>
		 <?php
		 }
		 if(!empty($rsuser['age'])){
		 ?>
		  <tr>
			<td><strong>Age:</strong></td>
			<td><?php echo $rsuser['age'];?></td>
			</tr>
		 <?php
		 }
		 if(!empty($rsuser['gender'])){
		 ?>
		  <tr>
			<td><strong>Gender:</strong></td>
			<td><?php echo ($rsuser['gender']=='m'?'Male':'Female');?></td>
		  </tr>
		 <?php
		 }
		 if(!empty($rsuser['email'])){
		 ?>
		  <tr>
			<td><strong>Email:</strong></td>
			<td><?php echo $rsuser['email'];?></td>
		  </tr>
		 <?php
		 }
		 if(!empty($rsuser['phone'])){
		 ?>
		  <tr>
			<td><strong>Phone:</strong></td>
			<td><?php echo $rsuser['phone'];?></td>
		  </tr>
		 <?php }?>
		</table>
	</td>
  </tr>
</table>
<br>
<div class="heading" style="margin-left:20px;">Products added by user <?php echo $rsuser['uname'];?>:</div><br>
<?php
	$qry = "SELECT * FROM ".$db_prefix."prods WHERE uid=".$rsuser['id']." ORDER BY prod_order DESC";
	$res = mysql_query($qry);
	if(mysql_num_rows($res) > 0)
	{
		$icount = 0;
?>
<table cellpadding="0" cellspacing="0" width="100%" style="margin-left:20px;">
	<tr>
		<?php
		while($rs = mysql_fetch_assoc($res))
		{
		?>
		<td>
			<table cellspacing="0" cellpadding="0" border="0" width="168" height="216" bgcolor="#FFFFFF">
				<tr>
					<td colspan="3" background="images/prod_top_bg.jpg" height="16"></td>
				</tr>
				<tr>
					<td style="width:7px;" background="images/prod_left_bg.jpg"></td>
					<td height="161" width="154" align="center" valign="middle">
						<a href="index.php?detail=products&itemid=<?php echo $rs['id'];?>"><img src="<?php if(file_exists($imgupthumbpath.$rs['prod_image'])){echo $imgupthumbpath.$rs['prod_image'];}else{echo $imagepath."nopicture.gif";}?>"></a>
					</td>
					<td style="width:7px;" background="images/prod_right_bg.jpg"></td>
				</tr>
				<tr>
					<td colspan="3" background="images/prod_bottom_bg.jpg" height="39" align="center" valign="middle">
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
							
						echo "<div class='$labelClassName'><a href='index.php?detail=products&itemid=".$rs['id']."'>$label</a></div>";
						?>
					</td>
				</tr>
			</table>
		</td>
		<?php
			$icount++;
			if($icount == 4)
			{
				echo "</tr><tr>";
				$icount = 0;
			}
		}
		?>
</table>
<?php
	}
	else
		echo "<div style='margin-left:25px;'>No item is added by this user yet.</div>";
}

if($_GET['view'] == 'list')
{
	$qry = "SELECT DISTINCT uid FROM ".$db_prefix."prods WHERE uid<>99999 AND allowed=1 ORDER BY id ASC";
	$count = 20;
	if(empty($_GET['page']))
		$page = 0;
	else
		$page = (intval($_GET['page'])-1);
	$limit = " LIMIT ".($page*$count).",".$count;

	$res = mysql_query($qry.$limit);
	if(mysql_num_rows($res) > 0)
	{
		echo "<br><div class='heading' style='margin-left:25px'>Producers:</div>";
		/*while($rs = mysql_fetch_assoc($res))
		{
			$qry2 = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs['uid'];
			$res2 = mysql_query($qry2);
			$rs2 = mysql_fetch_assoc($res2);
			echo "<li><a class='heading' href='index.php?detail=profile&profile_id=".$rs2['id']."'>".$rs2['uname']."</a></li>";
		}
		echo "</ul>";*/
		$icount = 0;
		?>
		<table style="margin:15px 0 0 20px;" cellspacing="15" width="90%">
			<tr>
			<?php 
			while($rs = mysql_fetch_assoc($res)){
				$qry2 = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$rs['uid'];
				$res2 = mysql_query($qry2);
				$rs2 = mysql_fetch_assoc($res2);
			?>
				<td align="center" width="20%" style="text-align:left">
					<a class='heading' href='index.php?detail=profile&profile_id=<?php echo $rs2['id'];?>'><img src="<?php echo (file_exists($imguploadpath."users/thumb_".$rs2['photo'])?$imguploadpath."users/thumb_".$rs2['photo']:$imagepath."nopicture.gif");?>" height="75"></a><br>
					<div style="margin-top:5px"><a href='index.php?detail=profile&profile_id=<?php echo $rs2['id'];?>'>
					<?php
						$fullname = $rs2['fname']." ".$rs2['lname'];
						if(empty($fullname))
							echo $rs2['uname'];
						else
							echo $fullname;
					?>
					</a></div>
					<div style="font-style:italic"><?php echo $rs2['location'];?></div>
				</td>
			<?php 
				$icount++;
				if($icount == 5)
				{
					echo "</tr><tr>";
					$icount = 0;
				}
			}
			?>
			</tr>
		</table>
		<?php
		require_once($includepath."ps_pagination.php");
		$pager = new PS_Pagination($dblink, $qry, 20, 5, 'detail='.$_GET['detail'].'&view=list');
		$rspage = $pager->paginate();
		echo "<div style='text-align:center'>";
		echo $pager->renderFullNav();
		echo '</div>';
	}
}
?>