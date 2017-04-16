<?php
include_once("../dbconnect.php"); 
// PHP5 Implementation - uses MySQLi.
// mysqli('localhost', 'yourUsername', 'yourPassword', 'yourDatabase');

// Is there a posted query string?
if(isset($_POST['queryString'])) 
{
	$queryString = mysql_real_escape_string($_POST['queryString']);
			
	// Is the string length greater than 0?			
	if($queryString != "" || $queryString != " ") 
	{
		// Run the query: We use LIKE '$queryString%'
		// The percentage sign is a wild-card, it works like this...
		// $queryString = 'Uni';
		// Returned data = 'United States, United Kindom';
		$val=$queryString;
		$cl_sql="SELECT * FROM producer WHERE Producer LIKE '$val%' ORDER BY Producer";
		$query = mysql_query($cl_sql);
		if(mysql_num_rows($query))
		{
			// While there are results loop through them - fetching an Object .
			while ($result = mysql_fetch_array($query))
			{
				// Format the results, im using <li> for the list, you can change it.
				// The onClick function fills the textbox with the result.
				//echo '< onClick="fill(\''.$result->value.'\');">'.$result->value.'</li>';
	        	//echo '<li onClick="fillName(\''.$result[Name].'\');fillAddrs(\''.$result[Address].'\'); fillPhone(\''.$result[Phone].'\');">'.$result[Name].'</li>';
				$StudId=mysql_real_escape_string($result[ProducerId]);
				$Name=mysql_real_escape_string($result[Producer]);
				
				echo "<li onClick='fillName(\"".$result[Producer]."\");'>".$result[Producer]."</li>";
	        }
		} 
		else 
		{
			echo '<font color=#ff0000>&nbsp;No such name found !</font>';
		}
	} 
	else 
	{
		// Dont do anything.
	} // There is a queryString.
} 
else 
{
	echo 'There should be no direct access to this script!';
}
	
?>