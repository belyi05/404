<?

$link = mysql_connect("localhost", "belyi05", "maman05") or die("Unable to connect to database server.");
mysql_select_db("404") or die("Unable to select database.");

mysql_set_charset('utf8');

$n = mysql_real_escape_string (trim($_POST['studentName']));
$s = mysql_real_escape_string (trim($_POST['studentSurname']));
$e = mysql_real_escape_string (trim($_POST['studentEmail']));
$b = mysql_real_escape_string (trim($_POST['studentBirthday']));
$g = mysql_real_escape_string (intval(trim($_POST['studentGroup'])));
$ip = mysql_real_escape_string (trim($_POST['studentIp']));


$sql = "INSERT INTO `404`.`users` (`name`, `surname`, `group_id`, `birthday`, `email`, `ip`) VALUES ('$n', '$s', $g, '$b', '$e', INET_ATON('$ip'))";

echo $sql;
$res = mysql_query($sql);

?>
