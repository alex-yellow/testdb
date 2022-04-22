<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Редактирование</title>
</head>
<body>
<?php 
include_once "db.php";
$id = $_GET['id'];
$queryedit = "SELECT * FROM users WHERE id=$id";
$resultedit = mysqli_query($link, $queryedit) or die(mysqli_error($link));
$user = mysqli_fetch_assoc($resultedit);
?> 
<form action="save.php?id=<?= $_GET['id'] ?>" method="POST">
	<input name="name" value="<?= $user['name']?>"> 
	<input name="age" value="<?= $user['age']?>">
	<input name="salary" value="<?= $user['salary']?>"> 
	<input type="submit">
</form>   
</body>
</html>