<?php
ob_start ();
session_start();
require "php/config.php";
require_once "php/functions.php";
$user = new login_registration_class();
?>

<?php
	$pageTitle = "Welcome Page";
?>
<?php include "header.php"; ?>
						