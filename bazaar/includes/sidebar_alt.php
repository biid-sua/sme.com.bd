<?php
require_once("antihack.php");
?>
<p>
	<?php
	require_once($mainconn);
	$qry = "SELECT * FROM ".$db_prefix."exhibition";
	$res = mysql_query($qry);

	if(mysql_num_rows($res) > 0)
	{
		while($rs = mysql_fetch_assoc($res))
		{
			echo "<span style='font-size:18px;'>".$rs['title']."</span><br><span style='font-size:12px'>By ".$rs['p_name']."</span><br><br>";
			echo "<div align=justify style='margin-right:5px'>".$rs['e_desc']."</div><br><br><br>";
			echo "<img src='".$imagepath."arrow_right.gif'>&nbsp;&nbsp;&nbsp;<a href='#' style='position:relative;top:-1px'>Photographer's Biography</a><br><br>";
			echo "<div id='lnkcomment'><img src='".$imagepath."arrow_right.gif' style='position:relative;top:1px'>&nbsp;&nbsp;&nbsp;<a href='javascript:pageView(2)'>Comments</a></div>";
			echo "<div id='lnkshow' style='display:none'><img src='".$imagepath."arrow_right.gif' style='position:relative;top:1px'>&nbsp;&nbsp;&nbsp;<a href='javascript:pageView(1)'>Back to the Show</a></div>";
	?>
	<?php
		}
	}
	?>
</p>
