<?php
require_once("antihack.php");
session_start();
require_once($mainconn);

if(empty($_SESSION['uid']) || empty($_SESSION['uname']) || empty($_SESSION['ugroup']))
{
	if($_GET['detail'] != 'login')
	{
?>
									<table cellspacing="0" id="loginbox" align="right">
										<tr>
											<td align="right">
												<div id="regbar" align="right" style="margin-right:5px;font-weight:bold">
												<a href="index.php?detail=register"><a href="index.php?detail=password_recovery">Forget Password?</a>
												</div>
												<div id="loginarea" align="right">
												<table align="right">
													<tr>
													<form name="login_form" id="login_form" method="post" action="">
														<td align="left" valign="middle" background="images/login_bg.jpg" style="width:110px;height:24px;">
															<input name="username" id="username" type="text" class="text" onFocus="text_toggle(this, 1)" onBlur="text_toggle(this, 0)" style="height:13px;width:70px;border:0;margin-left:4px;margin-bottom:2px;" value="Username">
														</td>
														<td align="left" valign="middle" background="images/login_bg.jpg" style="width:110px;height:24px;">
															<input name="password" id="password" type="password" class="text" onFocus="text_toggle(this, 1)" onBlur="text_toggle(this, 0)" style="height:13px;width:70px;border:0;margin-left:4px;" value="Password">
														</td>
														<td align="left" width="50">
															<div style="height:22px;overflow:hidden;margin-top:-1px">
															<input type="image" src="<?php echo $imagepath;?>login_button_bg.jpg" value="" id="login_button">
															</div>
														</td>
													</form>
													</tr>
												</table>
												</div>
											</td>
										</tr>
									</table>
<script language="javascript">
$(document).ready(function()
{
	$("#login_form").submit(function()
	{
		var regbarhtml = $("#regbar").html();
		$("#regbar").html('Validating....');
		$.post("login.php",{ username:$('#username').val(),password:$('#password').val(),submitlogin:'Sign In',rand:Math.random() } ,function(data)
        {
		  if(data=='yes') //if correct login detail
		  {
		  	$("#regbar").fadeTo(300,0,function()  //start fading the messagebox
			{ 
			  $(this).html('Logging in.....').fadeTo(900,1,
              function()
			  { 
			  	//location = 'index.php?detail=usercp';
				$(this).html('<a href="index.php?detail=usercp">User Control Panel</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="index.php?detail=lightbox">Favorites</a>');
				$("#loginarea").html('<table><tr><td align="center" valign="middle" class="heading">Welcome '+$('#username').val()+'</td><td  align="center" valign="middle" width="50"><input type="image" src="<?php echo $imagepath;?>logout_button_bg.jpg" value="" id="logout_button" onClick="if(confirm(\'Are you sure want to logout your account now?\')){location=\'logout.php\'}"></td></tr></table>');
			  });
			  
			});
		  }
		  else 
		  {
		  	$("#regbar").fadeTo(200,0.1,function() //start fading the messagebox
			{ 
			  $(this).html('Invalid Username/Password').fadeTo(900,1, function(){$(this).fadeTo(1200, 0, function(){$(this).html(regbarhtml).fadeTo(500,1)})});
			});		
          }
				
        });
 		return false; //not to post the  form physically
	});
});
</script>
<?php
	}
}
else
{
?>
									<table  cellspacing="0" id="loginbox" align="right">
										<tr>
											<td>
												<div id="regbar" align="right" style="margin-right:5px;font-weight:bold">
												<a href="index.php?detail=usercp">User Control Panel</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="index.php?detail=lightbox">Favorites</a>
												</div>
												<div id="loginarea" align="right">
												<table align="right">
													<td align="center" valign="middle" class="heading">
														Welcome <?php echo $_SESSION['uname'];?>
													</td>
													<td  align="center" valign="middle" width="50">
														<input type="image" src="<?php echo $imagepath;?>logout_button_bg.jpg" value="" id="logout_button" onClick="if(confirm('Are you sure want to logout your account now?')){location='logout.php'}">
													</td>
												</table>
												</div>
											</td>
										</tr>
									</table>
<?php
}
?>
									<script type="text/javascript">
									function text_toggle(elem, toggle)
									{
										if(elem.name == 'username' && (elem.value == '' || elem.value == 'Username'))
										{
											if(toggle == 1)
												elem.value = '';
											else
												elem.value = 'Username';
										}
										else if(elem.name == 'password' && (elem.value == '' || elem.value == 'Password'))
										{
											if(toggle == 1)
												elem.value = '';
											else
												elem.value = 'Password';
										}
										else if(elem.name == 'q' && (elem.value == '' || elem.value == 'Search Products'))
										{
											if(toggle == 1)
												elem.value = '';
											else
												elem.value = 'Search Products';
										}
										
										if(toggle == 1)
											elem.className = 'brighttext';
										else
											elem.className = 'dimtext';
									}
									</script>
