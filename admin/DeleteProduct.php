<?php
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:../index.php");
	} 
include_once('../dbconnect.php');

$ProductId=$_GET[ProductId];

$Result=mysql_query("SELECT * FROM omp WHERE ProductId='$ProductId'");
$rowDelete=mysql_fetch_array($Result);
$ProductId=$rowDelete["ProductId"];
$Photo=$rowDelete["Photo"];

if(!empty($ProductId))
{
unlink("../IGallery/$Photo");
unlink("../Thumbnail/$Photo");
}

$query="DELETE FROM omp WHERE ProductId='$ProductId'";
$result=mysql_query($query);

echo ("<script>window.location='ViewProducts.php';</script>");
exit;

?>
