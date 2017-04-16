<?php 
	if($_GET['item']=='upload'){
	?>
	<div style="padding:20px 20px 20px 20px;">
	<?php 
		$sqlp="select * from ".$db_prefix."help where id=1";
		$exep=mysql_query($sqlp);
		$rsp=mysql_fetch_array($exep);
		echo "$rsp[text]";
	?>
	</div>
<?php }
?>