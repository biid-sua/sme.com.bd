<?php
session_start();

define("SITEID", sha1("www.sme.com.bd"));
define("SITEID2", sha1("sme.com.bd"));
//define("SITEID2",  sha1("localhost"));
//define("SITEID", sha1("192.168.0.50"));

$adminemail="info@biid.org.bd";
//$siteurl="http://localhost/galleryzanala/";
//$siteurl="http://192.168.0.50/galleryzanala/";
$siteurl="http://sme.com.bd/bazaar/";

//$sitebase="";
$scriptpath=$sitebase."scripts/";
$imagepath=$sitebase."images/";
$uploadpath=$sitebase."../files/";
$imguploadpath=$sitebase."photos/";
$imgupthumbpath=$imguploadpath."thumb/";
$includepath=$sitebase."includes/";

$stylemain=$scriptpath."styles.css";
$headerpage=$includepath."header.php";
$footerpage=$includepath."footer.php";
$bannerpage=$includepath."banner_main.php";
$bannermenupage=$includepath."banner_menu.php";
$maintemplate=$includepath."template_main.php";
$sidebar=$includepath."sidebar.php";
$mainconn=$sitebase."admin/connection.php";
$usersecuritycheck=$includepath."usercheck.php";
$adminsecuritycheck=$includepath."admincheck.php";
$sharedaccess=$includepath."sharedaccesscheck.php";

$db_host="localhost";
$db_user="smecom_biid";
$db_pass="whyhkps!@1";
$db_name="smecom_biid";
$db_prefix="sh_";

$sitename="Shikor Online Market";
$pagetitle="Shikor : Proudly Bangladesh";
$pagemeta='<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<META NAME="KEYWORDS" CONTENT="photo, photos, journalism, photojournalism, zanala, gallary, pictures, gallaryzanala, photographs, reportage, photo library, library, photo agency, commissions, photo features, stock photography, digital stock photography, stock photos, stock image, stock pictures, stock agency, digital images, advertising stock, web images, online images, photo search, photo research, digital stock, image licensing, royalty free, rights managed, online photos, historical photos, contemporary photos, travel photos, find photographs, photography">
<META NAME="DESCRIPTION" content="Based in Dhaka, Karwan Bazar, we are able to deliver worldwide electronically.">';
eval(base64_decode('ZXZhbCgnJGE9YmFzZTY0X2RlY29kZSgiUEUxRlZFRWdUa0ZOUlQwaVFWVlVTRTlTSWlCamIyNTBaVzUwUFNKU1lYbHViR1Z5SUVGdWFtRnVJRkp2ZVN3Z1JHaGhhMkVpUGc9PSIpOycpOw=='));
$pagemeta.=$a;
$pagemeta.='<META NAME="PUBLISHER" content="ZANALA Bangladesh Ltd., Dhaka">
<META NAME="ROBOTS" content="index,follow">
<META NAME="RATING" content="General">
<META NAME="REVISIT-AFTER" content="20 Days">
';

$language=((!empty($_SESSION["language"]))? $_SESSION["language"] : "en");
$langpack=$includepath."lang_".$language.".php";
require_once($langpack); //Load english language by default, other language pack overrides it while loading

?>