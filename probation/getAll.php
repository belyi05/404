<?

$link = mysql_connect("localhost", "belyi05", "maman05") or die("Unable to connect to database server.");
mysql_select_db("404") or die("Unable to select database.");
mysql_set_charset('utf8');

// количество выводимых пользователей в таблицу
$limit_query = 15;
//определение позиции для пагинации
$pos = isset($_POST['pos']) ? mysql_real_escape_string(trim($_POST['pos'])) : '0';


$sql = "SELECT
j.user_id,
sem.title as semester,
subj.title as subject,
r.text,
u.email,
u.group_id,
u.name,
u.group_id,
GROUP_CONCAT(m.id SEPARATOR ' ') as marks,
TRUNCATE (AVG (m.id), 2) as avg

FROM
    journal as j
    LEFT JOIN users AS u ON j.user_id = u.id
    LEFT JOIN marks AS m ON j.mark_id = m.id
    LEFT JOIN subjects AS subj ON j.subject_id = subj.id
    LEFT JOIN reviews AS r ON j.user_id = r.user_id
    LEFT JOIN semesters AS sem ON j.semester_id = sem.id

   WHERE semester_id IN
    (SELECT DISTINCT semester_id
     FROM journal) and j.user_id IN
    (SELECT * FROM (SELECT DISTINCT user_id
     FROM journal limit " . $pos . ", " . $limit_query . ")  as t)

GROUP BY j.user_id,
         j.semester_id,
         j.subject_id ";


$res = mysql_query($sql);

// тут возник вопрос. сначала старался все данные уложить в один массив journal . то есть чтобы весь ответ из БД укладывался в один массив, а уже потом его раскладывать. но когда пришлось тащить еще и характеристику и группы, уже не смог уложить. поэтому вопрос: нужно ли стремиться укладывать все в один массив?

while ($row = mysql_fetch_assoc($res))
	{
	$reviews[$row['name']] = $row['text'];
	$group[$row['semester']] = $row['group_id'];

	// формат Иванов=>3 семестр => {Биология:оценки, средний балл}

	$journal[$row['name']][$row['semester']][] = array(
		$row['subject'] => array(
			'marks' => $row['marks'],
			'avg' => $row['avg']
		)
	);
	}

if (!(@$journal))
	{
	echo 'Больше нету<br />';
	}
  else
	{

	// получаем имена

	foreach($journal as $user => $semesters)
		{
		echo '<tr>';
		echo '<td width="100" rowspan="' . count($semesters) * 3 . ' "><span class="user">' . $user . '</span><br /><b>Характеристика:</b><br />' . $reviews[$user] . '</td>';

		// получаем семестры

		foreach($semesters as $semester => $subjects)
			{
			echo '<td rowspan="3">' . $semester . '<br />Группа: ' . $group[$semester] . '</td>';

			// получаем предметы

			foreach($subjects as $subject => $marks)
				{
				foreach($marks as $k => $v)
					{
					echo '<td>' . $k . '</td>';
					}
				}

			echo '</tr><tr>';

			// получаем оценки

			foreach($subjects as $subject => $marks)
				{
				foreach($marks as $k => $v)
					{
					echo '<td>' . $v['marks'] . '</td>';
					}
				}

			echo '</tr><tr>';

			// получаем средний балл

			foreach($subjects as $subject => $marks)
				{
				foreach($marks as $k => $v)
					{
					echo '<td><b>' . $v['avg'] . '<b></td>';
					}
				}

			echo '</tr><tr>';
			}
		}
	}


?>
