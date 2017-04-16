<?php
include("../dbconnect.php");

//-----------------------Delete Division----------------------------------------------------------------------
if ($_GET['LSrcId'])
	{
		$sql=mysql_query("DELETE FROM lsource WHERE LSrcId='$_GET[LSrcId]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='LoanSource.php'</script>");
	}
//-----------------------Delete District----------------------------------------------------------------------
elseif ($_GET['LCatId'])
	{
		$sql=mysql_query("DELETE FROM lcategory WHERE LCatId='$_GET[LCatId]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='AddLoanSource.php'</script>");
	}
//-----------------------Delete District----------------------------------------------------------------------
elseif ($_GET['SrcId'])
	{
		$sql=mysql_query("DELETE FROM srcdetails WHERE SrcId='$_GET[SrcId]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='AddSource.php'</script>");
	}
elseif ($_GET['LPId'])
	{
		$sql=mysql_query("DELETE FROM lproduct WHERE LPId='$_GET[LPId]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='LoanProduct.php'</script>");
	}
elseif ($_GET['PDId'])
	{
		$sql=mysql_query("DELETE FROM proddetails WHERE PDId='$_GET[PDId]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='AddLPDetail.php'</script>");
	}	
?>