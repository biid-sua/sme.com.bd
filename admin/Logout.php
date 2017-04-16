<?php
session_start();
session_unset();
session_destroy();
echo ("<script>window.alert('You have successfully Loged out');</script>");
echo ("<script>window.location='index.php';</script>");
exit;

?>
