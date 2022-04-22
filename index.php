<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Таблица пользователей</title>
</head>
<body>
<?php
	include_once "db.php";
    $query = "SELECT * FROM users";
	$result = mysqli_query($link, $query) or die(mysqli_error($link));
	    
    for ($data = []; $row = mysqli_fetch_assoc($result);
		$data[] = $row);
?> 

<h1>Справочник персонала</h1>
<h3><a href="new.php">Добавить пользователя</a></h3>
<table class="main"> 
    <tr>
		<th>id</th>
		<th>name</th>
		<th>age</th>
		<th>salary</th>
		<th>show</th>
		<th>edit</th>
		<th>delete</th>
	</tr>   
<?php foreach ($data as $elem): ?>
	<tr>
        <td><?= $elem['id'] ?></td>
		<td><?= $elem['name'] ?></td>
		<td><?= $elem['age'] ?> </td>
		<td><?= $elem['salary'] ?></td>
        <td><?= "<a href='show.php?id=$elem[id]'>просмотреть</a>"?></td>
        <td><?= "<a href='edit.php?id=$elem[id]'>редактировать</a>"?></td>
        <td><?= "<a href='?del=$elem[id]'>удалить</a>"?></td>
        
</tr>
<?php endforeach; ?>
</table>
<?php 
    $del = $_GET['del'];
    $querydel = "DELETE FROM users WHERE id=$del";
	$resultdel = mysqli_query($link, $querydel) or die();
	echo '<script>location.href="index.php";</script>';
?>  
</body>
</html>
