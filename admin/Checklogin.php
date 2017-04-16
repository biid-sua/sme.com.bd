<?php 
session_start();

$UserName=trim($_POST[UserName]);
$Password=trim($_POST[Password]);
$UserName = strtolower($UserName);

include_once("../dbconnect.php");
$sql = "Select * from admin WHERE UserName='$UserName' AND ConfirmPassword = md5('$Password')";
$result = mysql_query($sql);
$NumRow = mysql_num_rows($result);

if ($NumRow != 0)
{
$_SESSION['LoginUserId'] = $UserName;
echo ("<script>window.location='Welcome.php';</script>");	
}
else
{
$Allert = "Login-Failed!-Try-Again.";
echo ("<script>window.location='index.php?alert=$Allert';</script>");
}
?>
