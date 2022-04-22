<?php
include_once "db.php";

	$id = $_GET['id'];
	$name = $_POST['name'];
	$age = $_POST['age'];
	$salary = $_POST['salary'];

    $queryup = "UPDATE users SET name='$name', age='$age', 
    salary='$salary' WHERE id=$id";
    $resultup = mysqli_query($link, $queryup) or die(mysqli_error($link));
    echo 'юзер успешно изменен!';
?>