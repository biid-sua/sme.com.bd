<?php
include("../dbconnect.php");

//-----------------------Delete Division----------------------------------------------------------------------
if ($_GET[DivId])
	{
		$sql=mysql_query("DELETE FROM division WHERE DivId='$_GET[DivId]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='AddLoanSource.php'</script>");
	}
//-----------------------Delete District----------------------------------------------------------------------
elseif ($_GET[DistId])
	{
		$sql=mysql_query("DELETE FROM district WHERE DistId='$_GET[DistId]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='Location.php'</script>");
	}
//-----------------------Delete Division----------------------------------------------------------------------
elseif ($_GET[ThanaId])
	{
		$sql=mysql_query("DELETE FROM thana WHERE ThanaId='$_GET[ThanaId]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='AddThana.php'</script>");
	}
//-----------------------Delete Division----------------------------------------------------------------------
elseif ($_GET[UnionId])
	{
		$sql=mysql_query("DELETE FROM union_ward WHERE UnionId='$_GET[UnionId]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='AddUnion.php'</script>");
	}
elseif ($_GET[CityId])
	{
		$sql=mysql_query("DELETE FROM city WHERE CityId='$_GET[CityId]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='AddCity.php'</script>");
	}	
elseif ($_GET[Id])
	{
		$sql=mysql_query("DELETE FROM pages WHERE Id='$_GET[Id]'") or die('Error:'.mysql_error());
		print("<script>window.alert('Successfully deleted !');</script>");
		print("<script>window.location='Address.php'</script>");
	}					
?>