<?php
include("../dbconnect.php");

$Id=$_GET[Id];

$query="DELETE FROM main WHERE Id='$Id'";
$result=mysql_query($query);

header("Location:Welcome.php");
exit;

?>


 