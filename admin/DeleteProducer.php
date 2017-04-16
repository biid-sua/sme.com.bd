<?php
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:../index.php");
	} 
include_once('../dbconnect.php');

$ProducerId=$_GET[ProducerId];

$Result=mysql_query("SELECT * FROM producer WHERE ProducerId='$ProducerId'");
$rowDelete=mysql_fetch_array($Result);
$ProducerId=$rowDelete["ProducerId"];
$Photo=$rowDelete["Photo"];

if(!empty($ProductId))
{
unlink("../IGallery/$Photo");
unlink("../Thumbnail/$Photo");
}

$query="DELETE FROM producer WHERE ProducerId='$ProducerId'";
$result=mysql_query($query);

echo ("<script>window.location='ViewProducer.php';</script>");
exit;

?>
