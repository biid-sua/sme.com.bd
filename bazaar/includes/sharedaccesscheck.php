<?php
require_once("antihack.php");

session_start();

if(empty($_SESSION['uid']) || empty($_SESSION['uname']) || empty($_SESSION['ugroup']) || !($_SESSION['ugroup'] != 2 || $_SESSION['uid'] != 99999))
	header("location: ".$siteurl."index.php?detail=login&ref=".$_GET['detail']);
	
//echo $_SESSION['uid']."<br>".$_SESSION['uname']."<br>".$_SESSION['ugroup'];
?>