<?php

$sitebase="";
require_once("admin/config.php");
require_once($headerpage);
require_once($mainconn);
require($includepath."request_secure.php");
//************** TEMPLATE LOADER : START ****************/
if(($_GET['detail'] == 'products' && empty($_GET['itemid'])) || $_GET['detail'] == '')
	require_once($includepath."template_alt.php");
else
	require_once($maintemplate);
//************** TEMPLATE LOADER : END ******************/
require_once($footerpage);
?>