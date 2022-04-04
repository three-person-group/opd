<?php 

session_start();
session_destroy();

header("Location: temp_login.php");

?>
