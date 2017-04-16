<?php
session_start();

if($_GET['remote'] != 'ajax')
{
	require_once("antihack.php");
}
else
{
	$sitebase = "../";
	require_once($sitebase."admin/config.php");
	$imagepath="images/";
}
require_once($usersecuritycheck);
require_once($mainconn);

$qry = "SELECT * FROM ".$db_prefix."userinfo WHERE id=".$_SESSION['uid'];
$res = mysql_query($qry);
$rs = mysql_fetch_assoc($res);
?>
<p>
	<div style="height:350px;padding:2px 0px 0px 33px">
	You can edit your <?php echo $sitename;?> account below:
<form name="frmRegister" id="frmRegister" method="post" action="<?php echo $includepath;?>reguser.php?ref=usercp" enctype="multipart/form-data" onSubmit="frmSubmit();return false;">
	<br>
	<table border="0" cellpadding="5" cellspacing="0">
		<tr>
		  <td align="left" valign="top">&nbsp;</td>
		  <td align="left" valign="top"><span style="color:#000000;font-size:14px;">*</span>&nbsp;</td>
		  <td align="left"><span style="text-decoration:underline;font-size:11px">Marked fields are mandatory</span></td>
		  <td width="300" align="left">&nbsp;</td>
	  </tr>
		<tr>
			<td align="left" valign="top">Username:&nbsp;</td>
			<td align="left" valign="top">&nbsp;</td>
			<td align="left" class="heading"><?php echo $rs['uname'];?></td>
			<td align="left">&nbsp;</td>
		</tr>
		<tr>
			<td align="left" valign="top">New Password:</td>
			<td align="left" valign="top"><span style="color:#000000;font-size:14px;">*</span></td>
			<td align="left"><input name="upass" id="upass" type="password" class="text" size="40" value=""></td>
		    <td align="left"><div id="chkupass" style="padding:1px 10px 1px 10px;float:left"></div></td>
		</tr>
		<tr>
			<td align="left" valign="top">Retype Password:&nbsp;&nbsp;</td>
			<td align="left" valign="top"><span style="color:#000000;font-size:14px;">*</span></td>
			<td align="left"><input name="repass" id="repass" type="password" class="text" size="40"></td>
		    <td align="left"><div id="chkrepass" style="padding:1px 10px 1px 10px;float:left"></div></td>
		</tr>
		<tr>
			<td align="left" valign="top">Email:&nbsp;&nbsp;</td>
			<td align="left" valign="top">&nbsp;</td>
			<td align="left"><input name="email" id="email" type="text" class="text" size="40" value="<?php echo $rs['email'];?>"></td>
		    <td align="left"><div id="chkemail" style="padding:1px 10px 1px 10px;float:left"></div></td>
		</tr>
		<tr>
			<td align="left" valign="top">First Name:&nbsp;&nbsp;</td>
			<td align="left" valign="top"><span style="color:#000000;font-size:14px;">*</span></td>
			<td align="left"><input name="fname" id="fname" type="text" class="text" size="40" value="<?php echo $rs['fname'];?>"></td>
		    <td align="left"><div id="chkfname" style="padding:1px 10px 1px 10px;float:left"></div></td>
		</tr>
		<tr>
			<td align="left">Last Name:&nbsp;&nbsp;</td>
			<td align="left">&nbsp;</td>
			<td align="left"><input name="lname" id="lname" type="text" class="text" size="40" value="<?php echo $rs['lname'];?>"></td>
		    <td align="left"><div id="chklname" style="padding:1px 10px 1px 10px;float:left"></div></td>
		</tr>
		<tr>
			<td align="left" valign="top">Address:&nbsp;&nbsp;</td>
			<td align="left" valign="top"><span style="color:#000000;font-size:14px;">*</span></td>
			<td align="left"><input name="address" id="address" type="text" class="text" size="40" value="<?php echo $rs['address'];?>"></td>
		    <td align="left"><div id="chkaddress" style="padding:1px 10px 1px 10px;float:left"></div></td>
		</tr>
		<tr>
          <td align="left" valign="top">Contact No.:&nbsp;&nbsp;</td>
          <td align="left" valign="top">&nbsp;</td>
          <td align="left"><input name="phone" id="phone" type="text" class="text" size="40" value="<?php echo $rs['phone'];?>"></td>
          <td align="left"><div id="chkphone" style="padding:1px 10px 1px 10px;float:left"></div></td>
	  </tr>
		<tr>
			<td align="left" valign="top">Age:&nbsp;&nbsp;</td>
			<td align="left" valign="top">&nbsp;</td>
			<td align="left"><input name="age" id="age" type="text" class="text" size="40" value="<?php echo $rs['age'];?>"></td>
		    <td align="left"><div id="chkage" style="padding:1px 10px 1px 10px;float:left"></div></td>
		</tr>
		<tr>
			<td align="left" valign="top">Gender:&nbsp;&nbsp;</td>
			<td align="left" valign="top">&nbsp;</td>
			<td align="left">
			<select name="gender" id="gender" class="text" style="width:225px;">
					<option value="">Select gender</option>
					<option value="">___________________</option>
					<option value="m" <?php echo ($rs['gender']=='m'?'selected':'');?>>Male</option>
					<option value="f" <?php echo ($rs['gender']=='f'?'selected':'');?>>Female</option>
			</select>
			</td>
		    <td align="left"><div id="chkgender" style="padding:1px 10px 1px 10px;float:left"></div></td>
		</tr>
		<tr>
			<td align="left" valign="top">Location:&nbsp;&nbsp;</td>
			<td align="left" valign="top"><span style="color:#000000;font-size:14px;">*</span></td>
			<td align="left">
			<?php
			$llist = Array('Dhaka', 'CHT', 'Jessore', 'Other');
			?>
			<select name="location" id="location" class="text" style="width:225px;">
					<option value="">Select a location</option>
					<option value="">___________________</option>
				<?php foreach($llist as $litem){?>
				<option value="<?php echo $litem;?>" <?php echo ($rs['location']==$litem?'selected':'');?>><?php echo $litem;?></option>
				<?php }?>
			</select>
			</td>
		    <td align="left"><div id="chklocation" style="padding:1px 10px 1px 10px;float:left"></div></td>
		</tr>
		<tr>
			<td align="left" valign="top">Photo:</td>
			<td align="left" valign="top">&nbsp;</td>
			<td align="left" colspan="2">
			<?php if(!empty($rs['photo'])){echo '<img src="'.$imguploadpath."users/thumb_".$rs['photo'].'">';}?>
			</td>
		</tr>
		<tr>
			<td colspan="4" height="15"></td>
		</tr>
		<tr>
			<td colspan="2"></td>
			<td colspan="2" align="left"><input type="submit" class="button" name="register" id="register" value="Update">&nbsp;&nbsp;<input type="button" class="button" name="cancel" id="cancel" value="Cancel" onClick="location='index.php?detail=usercp'"></td>
		</tr>
	</table>
	<input type="hidden" name="securekey" value="<?php echo sha1(date("D, j M, Y"))?>">
</form>
</p>

<div style="height:250px"></div>
<style type="text/css">
.messagebox{
	border:1px solid #cccccc;
	background:#f9f9f9;
	padding:3px;
}
.messageboxok{
	border:1px solid #cccccc;
	background:#f9f9f9;
	padding:3px;
}
.messageboxerror{
	border:1px solid #cccccc;
	background:#f9f9f9;
	padding:3px;
}
</style>
<script language="javascript">
var errornum = 0;
var myval = "";
var updatesuccess = 0;

$(document).ready(function()
{
	//Validate Username
	$("#uname").blur(function()
	{
		checkanim("uname");
		myval = $("#uname").val();
		if(myval == '')
			erroralert("uname", "Please enter username");
		else if(!validatedata(myval))
			erroralert("uname", "Invalid username");
		else
		{
			var ajaxresponse = $.ajax({
				url: "includes/checkuser.php?check=user&user="+$('#uname').val(),
				async: false
			}).responseText;
			if(ajaxresponse=='exist')
				erroralert('uname', 'This user name already exists');
			else
				resetalert("uname");
		}
	});

	//Validate password
	$("#upass").blur(function()
	{
		checkanim("upass");
		myval = $("#upass").val();
		var myval2 = $("#uname").val();
		if(myval == '')
			erroralert("upass", "Please enter password");
		else if(myval.length < 6)
			erroralert("upass", "Password must consist of at least 6 characters");
		else if(myval.toLowerCase() == myval2.toLowerCase())
			erroralert("upass", "Password should not be identical to username");
		else
			resetalert("upass");
	});
	$("#upass").keyup(function(){
	passwordStrength();
	});
	$("#repass").blur(function()
	{
		checkanim("repass");
		myval = $("#upass").val();
		var myval2 = $("#repass").val();
		if(myval != myval2)
			erroralert("repass", "Password mismatch. Please retype carefully");
		else
			resetalert("repass");
	});

	//Validate email
	$("#email").blur(function()
	{
		checkanim("email");
		myval = $("#email").val();
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if(myval != ''){
		/*if(myval == '')
			erroralert("email", "Please enter email");
		else*/ if(!filter.test(myval))
			erroralert("email", "Invalid/Incorrect email address");
		/*else
		{
			var ajaxresponse = $.ajax({
				url: "includes/checkuser.php?check=email&email="+$('#email').val(),
				async: false
			}).responseText;
			if(ajaxresponse=='exist')
				erroralert('email', 'Email is already registered');
			else
				resetalert("email");
		}*/
			resetalert("email");
		}
		else
			resetalert("email");
	});
	
	//Validate firstname
	$("#fname").blur(function()
	{
		checkanim("fname");
		myval = $("#fname").val();
		if(myval == '')
			erroralert("fname", "Plese enter first name");
		else if(!validatedata(myval, true))
			erroralert("fname", "Invalid input");
		else
			resetalert("fname");
	});

	//Validate lastname
	$("#lname").blur(function()
	{
		checkanim("lname");
		myval = $("#lname").val();
		if(myval != ''){
		/*if(myval == '')
			erroralert("lname", "Plese enter last name");
		else*/ if(!validatedata(myval, true))
			erroralert("lname", "Invalid input");
		else
			resetalert("lname");
		}
		else
			resetalert("lname");
	});

	//Validate address
	$("#address").blur(function()
	{
		checkanim("address");
		myval = $("#address").val();
		if(myval == '')
			erroralert("address", "Plese enter address");
		else if(!validatedata(myval, true, true))
			erroralert("address", "Invalid input");
		else
			resetalert("address");
	});


	//Validate phone
	$("#phone").blur(function()
	{
		checkanim("phone");
		myval = $("#phone").val();
		if(myval != ''){
		/*if(myval == '')
			erroralert("phone", "Plese enter contact no.");
		else*/ if(!validatedata(myval, false, false, true))
			erroralert("phone", "Invalid input");
		else
			resetalert("phone");
		}
		else
			resetalert("phone");
	});

	//Validate age
	$("#age").blur(function()
	{
		checkanim("age");
		myval = $("#age").val();
		if(myval != ''){
		/*if(myval == '')
			erroralert("age", "Plese enter your age");
		else*/ if(!validatedata(myval, false, false, true))
			erroralert("age", "Invalid input");
		else
			resetalert("age");
		}
		else
			resetalert("age");
	});

	//Validate country
	/*$("#gender").blur(function()
	{
		checkanim("gender");
		myval = $("#gender").val();
		if(myval == '')
			erroralert("gender", "Plese select gender");
		else
			resetalert("gender");
	});*/

	//Validate location
	$("#location").blur(function()
	{
		checkanim("location");
		myval = $("#location").val();
		if(myval == '')
			erroralert("location", "Plese select a location");
		else
			resetalert("location");
	});

	//Validate reference
	$("#ref").blur(function()
	{
		checkanim("ref");
		myval = $("#ref").val();
		if(myval == '')
			erroralert("ref", "Plese select an option");
		else
			resetalert("ref");
	});

});

function validateForm()
{
	//Validate Username
		checkanim("uname");
		myval = $("#uname").val();
		if(myval == '')
			erroralert("uname", "Please enter username");
		else if(!validatedata(myval))
			erroralert("uname", "Invalid username");
		else
		{
			var ajaxresponse = $.ajax({
				url: "includes/checkuser.php?check=user&user="+$('#uname').val(),
				async: false
			}).responseText;
			if(ajaxresponse=='exist')
				erroralert('uname', 'This user name already exists');
			else
				resetalert("uname");
		}

	//Validate password
		checkanim("upass");
		myval = $("#upass").val();
		var myval2 = $("#uname").val();
		if(myval != '')
		{
			if(myval.length < 6)
				erroralert("upass", "Password must consist of at least 6 characters");
			else if(myval.toLowerCase() == myval2.toLowerCase())
				erroralert("upass", "Password should not be identical to username");
			else
				resetalert("upass");
			checkanim("repass");
			myval = $("#upass").val();
			var myval2 = $("#repass").val();
			if(myval != myval2)
				erroralert("repass", "Password mismatch. Please retype carefully");
			else
				resetalert("repass");
		}
		else
		{
			resetalert("upass");
			resetalert("repass");
		}

	//Validate email
		checkanim("email");
		myval = $("#email").val();
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if(myval != ''){
		/*if(myval == '')
			erroralert("email", "Please enter email");
		else*/ if(!filter.test(myval))
			erroralert("email", "Invalid/Incorrect email address");
		/*else
		{
			var ajaxresponse = $.ajax({
				url: "includes/checkuser.php?check=email&email="+$('#email').val(),
				async: false
			}).responseText;
			if(ajaxresponse=='exist')
				erroralert('email', 'Email is already registered');
			else
				resetalert("email");
		}*/
			resetalert("email");
		}
		else
			resetalert("email");
	
	//Validate firstname
		checkanim("fname");
		myval = $("#fname").val();
		if(myval == '')
			erroralert("fname", "Plese enter first name");
		else if(!validatedata(myval, true))
			erroralert("fname", "Invalid input");
		else
			resetalert("fname");

	//Validate lastname
		checkanim("lname");
		myval = $("#lname").val();
		if(myval != ''){
		/*if(myval == '')
			erroralert("lname", "Plese enter last name");
		else*/ if(!validatedata(myval, true))
			erroralert("lname", "Invalid input");
		else
			resetalert("lname");
		}
		else
			resetalert("lname");

	//Validate address
		checkanim("address");
		myval = $("#address").val();
		if(myval == '')
			erroralert("address", "Plese enter address");
		else if(!validatedata(myval, true, true))
			erroralert("address", "Invalid input");
		else
			resetalert("address");

	//Validate phone
		checkanim("phone");
		myval = $("#phone").val();
		if(myval != ''){
		/*if(myval == '')
			erroralert("phone", "Plese enter contact no.");
		else*/ if(!validatedata(myval, false, false, true))
			erroralert("phone", "Invalid input");
		else
			resetalert("phone");
		}
		else
			resetalert("phone");

	//Validate age
		checkanim("age");
		myval = $("#age").val();
		if(myval != ''){
		/*if(myval == '')
			erroralert("age", "Plese enter your age");
		else*/ if(!validatedata(myval, false, false, true))
			erroralert("age", "Invalid input");
		else
			resetalert("age");
		}
		else
			resetalert("age");

	//Validate gender
		/*checkanim("gender");
		myval = $("#gender").val();
		if(myval == '')
			erroralert("gender", "Plese select gender");
		else
			resetalert("gender");*/


	//Validate country
		checkanim("location");
		myval = $("#location").val();
		if(myval == '')
			erroralert("location", "Plese select a location");
		else
			resetalert("location");

}

function passwordStrength() {
var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
var enoughRegex = new RegExp("(?=.{6,}).*", "g");
var pwd = $("#upass").val();
if (pwd.length==0) {
$("#chkupass").html('Enter password').addClass('light_bg').fadeTo(900,1);
} else if (false == enoughRegex.test(pwd)) {
$("#chkupass").html('More Characters').addClass('light_bg').fadeTo(900,1);
} else if (strongRegex.test(pwd)) {
$("#chkupass").html('Your password is highly secure').addClass('light_bg').fadeTo(900,1);
} else if (mediumRegex.test(pwd)) {
$("#chkupass").html('Your password is secure').addClass('light_bg').fadeTo(900,1);
} else {
$("#chkupass").html('Your password is weak!').addClass('light_bg').fadeTo(900,1);
}
}

function checkanim(div)
{
	$("#chk"+div).removeClass().html('<img src="<?php echo $imagepath;?>loading2.gif" height="14">').fadeIn("slow");
}

function erroralert(div, msg)
{
	errornum++;
	$("#chk"+div).fadeTo(200,0.1,function() //start fading the messagebox
	{
		$(this).html(msg).addClass('light_bg').fadeTo(900,1);
		$("#"+div).removeClass().addClass('hilitebox');
	});
}

function resetalert(div)
{
	$("#chk"+div).html('').removeClass();
	 $("#"+div).removeClass().addClass('text');
}

function validatedata(val, allowspace, allowaddresschar, numericonly)
{
	var re;
	if(typeof allowspace == "undefined")
		re=/^[-_a-z0-9.]+$/i;
	else if(allowaddresschar == true)
		re=/^[-_a-z0-9.,\(\)\s\/#]+$/i;
	else if(numericonly == true)
		re=/^[0-9]+$/i;
	else
		re=/^[-_a-z0-9.\s]+$/i;
	return re.test(val);
}

function frmSubmit()
{
	errornum = 0;
	validateForm();
	if(errornum > 0)
	{
		errornum = 0;
		return false;
	}
	else
	{
		document.frmRegister.submit();
	}
}
</script>