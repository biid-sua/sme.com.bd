<?php 
session_start();

if(!isset($_SESSION['LoginUserId'])) 
	{
	  header("Location:index.php");
	} 
		
include_once("../dbconnect.php");

//-----------------------Insert Division--------------------------------------
if ($_POST['SubmitDiv']) 
{
$Division=$_POST['Division'];
$DivId=$_POST['DivId'];
		
//echo $Division; exit;

	$result=mysql_query("SELECT * FROM division WHERE DivName='$Division'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='AddLoanSource.php';</script>");	
		}
	else
	{
	$result=mysql_query("UPDATE division SET DivName='$Division' WHERE DIvId='$DivId'"); //print $sql; 
	echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
	echo ("<script>window.location='AddLoanSource.php';</script>");	
	}
}
//-----------------------Edit District--------------------------------------
if ($_POST['SubmitDist']) 
{
$DivId=$_POST['DivId'];
$District=$_POST['District'];
$DistId=$_POST['DistId'];
		
//echo $Division; exit;

	$result=mysql_query("SELECT * FROM district WHERE DistName='$District'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='Location.php';</script>");	
		}
	else
	{
	$result=mysql_query("UPDATE district SET DivId='$DivId', DistName='$District' WHERE  DistId='$DistId'"); //print $sql; 
	echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
	echo ("<script>window.location='Location.php';</script>");	
	}
}
//-----------------------Edit Thana--------------------------------------
if ($_POST[SubmitThana]) 
{
$DivId=$_POST[DivId];
$DistId=$_POST[DistId];
$ThanaId=$_POST[ThanaId];
$Thana=$_POST[Thana];

		
//echo $Division; exit;

	$result=mysql_query("SELECT * FROM thana WHERE DivId='$DivId' AND DistId='$DistId' AND Thana='$Thana'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='AddAddressLine.php';</script>");	
		}
	else
	{
	$result=mysql_query("UPDATE thana SET DivId='$DivId', DistId='$DistId', Thana='$Thana' WHERE  ThanaId='$ThanaId'"); //print $sql; 
	echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
	echo ("<script>window.location='AddThana.php';</script>");	
	}
}
//-----------------------Edit Union--------------------------------------
if ($_POST[SubmitUnion]) 
{
$DivId=$_POST[DivId];
$DistId=$_POST[DistId];
$ThanaId=$_POST[ThanaId];
$UnionId=$_POST[UnionId];
$UnionName=$_POST[UnionName];

//echo $UnionName; exit;

	$result=mysql_query("SELECT * FROM union_ward WHERE DivId='$DivId' AND DistId='$DistId' AND ThanaId='$ThanaId' AND UnionName='$UnionName'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='AddAddressLine.php';</script>");	
		}
	else
	{
	$result=mysql_query("UPDATE union_ward SET DivId='$DivId', DistId='$DistId', ThanaId='$ThanaId', UnionName='$UnionName' WHERE  UnionId='$UnionId'"); //print $sql; 
	echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
	echo ("<script>window.location='AddUnion.php';</script>");	
	}
}
//-----------------------Insert City/Village--------------------------------------	
if ($_POST[SubmitCity]) 
{
$DivId=$_POST[DivId];
$DistId=$_POST[DistId];
$ThanaId=$_POST[ThanaId];
$UnionId=$_POST[UnionId];
$CityId=$_POST[CityId];
$City=$_POST[City];

//echo $UnionName; exit;

$result=mysql_query("SELECT * FROM city WHERE City='$City' AND DivId='$DivId' AND DistId='$DistId' AND ThanaId='$ThanaId' AND UnionId='$UnionId'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='AddAddressLine.php';</script>");	
		}
	else
	{
	$result=mysql_query("UPDATE city SET DivId='$DivId', DistId='$DistId', ThanaId='$ThanaId', UnionId='$UnionId', City='$City' WHERE  CityId='$CityId'"); //print $sql; 
	echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
	echo ("<script>window.location='AddCity.php';</script>");	
	}
}	
//-----------------------Update Address--------------------------------------
if (isset($_POST[UpdateAddress]))
{
$Details=$_POST[Address];
		
//echo $Division; exit;

	$result=mysql_query("SELECT * FROM pages WHERE Details='$Details'");
	$num=mysql_num_rows($result);
	if ($num > 0) 
		{
			echo ("<script>window.alert('Data Already Exists!!!');</script>");
			echo ("<script>window.location='Address.php';</script>");	
		}
	else
	{
	$result=mysql_query("UPDATE pages SET Details='$Details' WHERE Id='$_POST[Id]'"); //print $sql; 
	echo ("<script>window.alert('Data Updated Successfully!!!');</script>");
	echo ("<script>window.location='Address.php';</script>");	
	}
}
	
?>
