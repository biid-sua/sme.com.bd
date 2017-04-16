<?php
require_once("antihack.php");

if($_GET['detail'] == 'login'){
?>
<p>
	<ul class="categories" style="position:relative;top:0px;left:-20px">
		<li>Please sign in to access and manage lightboxes and to buy images without watermarks.</li>
		<li>&nbsp;</li>
		<li>If you do not have account then please register from following:</li>
		<li></li>
		<li>&nbsp;</li>
		<li><img src="<?php echo $imagepath;?>arrow_right.gif" width="4">&nbsp;&nbsp;Register</li>
		<li><img src="<?php echo $imagepath;?>arrow_right.gif" width="4">&nbsp;&nbsp;Forgotten Password</li>
	</ul>
</p>
<?php }elseif($_GET['detail'] == 'register'){?>
<p>
	<ul class="categories" style="position:relative;top:0px;left:-20px">
		<li>Please register for complete access to the site This will enable you to save images in lightboxes and buy images using cart.</li>
		<li>&nbsp;</li>
		<li>Terms and conditions</li>
	</ul>
</p><?php }?>