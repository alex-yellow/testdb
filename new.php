<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Добавить</title>
</head>
<body>
<form action="" method="POST">
    <h2>Имя:</h2>
	<input name="name" value="<?php if(isset($_POST['name'])) echo $_POST['name'] ?>"><br>
    <h2>Возраст:</h2>
	<input name="age" value="<?php if(isset($_POST['age'])) echo $_POST['age'] ?>"><br>
    <h2>Зарплата:</h2>
	<input name="salary" value="<?php if(isset($_POST['salary'])) echo $_POST['salary'] ?>"><br><br>
	<input type="submit">
    </form>
    <?php 
    include_once "db.php";

    if (!empty($_POST)) {
    $name = $_POST['name'];
	$age = $_POST['age'];
	$salary = $_POST['salary'];

    $querynew = "INSERT INTO users SET 
		name='$name', age='$age', salary='$salary'"; 
        $resultnew= mysqli_query($link, $querynew) or die(mysqli_error($link));
	echo '<script>location.href="index.php";</script>';
    }
    ?>
</form>
</body>
</html>