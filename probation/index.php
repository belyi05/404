<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
	<title>Шлеенков Мотивационное задание</title>
	 <script src="//yastatic.net/jquery/1.8.3/jquery.min.js"></script>
      <script src="script.js"></script>
      	<link rel="stylesheet" type="text/css" href="style.css" media="all"/>
      	</head>

<body>
<form id="addStudent" method="post" action="insertOne.php">
	<input id="studentName" name="studentName" type="text" placeholder="Ваше имя" required >
	<input id="studentSurname" name="studentSurname" type="text" placeholder="Ваша фамилия" required >
	<input id="studentEmail" name="studentEmail" type="email" placeholder="Ваш email" required >
	<input id="studentGroup" name="studentGroup" type="text" placeholder="Ваша группа" pattern="^[0-9]{1,6}$" required >
	<input id="studentBirthday" name="studentBirthday" type="text" placeholder="2014-05-06" pattern="^[0-9]{4}-[0-9]{2}-[0-9]{2}$" required >
	<input id="studentIp" name="studentIp" type="hidden" value="<? echo $_SERVER[" remote_addr"];?>">
	<button type="submit" id="submitForm">Добавить студента</button>
</form>

<table class="tg" id="table">
    <? include ('getAll.php');?>
</table>

<input type="button" id="more" value="Хочу еще">

</body>
</html>
