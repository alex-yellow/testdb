<?php 
	include_once "db.php";
    $del = $_GET['del'];
    $querydel = "DELETE FROM users WHERE id=$del";
	$resultdel = mysqli_query($link, $querydel) or die();
?>