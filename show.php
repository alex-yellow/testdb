<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show</title>
</head>
<body>
    <?php 
    	include_once "db.php";
        $id = $_GET['id'];
        $queryshow = "SELECT * FROM users WHERE id=$id";
        $resultshow = mysqli_query($link, $queryshow) or die(mysqli_error($link));
        $user = mysqli_fetch_assoc($resultshow); 
    ?>
    <div>
	
		<h3 class="name">Имя: <?=$user['name']?></h3>

	
		 <h3 class="age">Возраст: <?= $user['age'] ?></h3>
		<h3 class="salary">Зарплата: <?= $user['salary'] ?></h3>

</div>
</body>
</html>