<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>

<body bgcolor="#FFFFFF">

<style type="text/css">
    .tg {
        border-collapse: collapse;
        border-spacing: 0;
    }

    .tg td {
        font-family: Arial, sans-serif;
        font-size: 14px;
        padding: 10px 5px;
        border-style: solid;
        border-widtd: 1px;
        overflow: hidden;
        word-break: normal;
    }

    .tg td {
        font-family: Arial, sans-serif;
        font-size: 14px;
        font-weight: normal;
        padding: 10px 5px;
        border-style: solid;
        border-widtd: 1px;
        overflow: hidden;
        word-break: normal;
    }
</style>


<?
header('Content-Type: text/html; charset=utf-8');

ini_set('display_errors',1);
ini_set('display_startup_errors',1);
error_reporting(-1);
mysql_connect("localhost", "belyi05", "maman05") or die("Unable to connect to database server.");
mysql_select_db("404") or die("Unable to select database.");

mysql_set_charset('utf8');

$sql = "SELECT j.user_id,sem.title as semester,subj.title as subject, r.text, u.email, u.name,  u.group_id,
       GROUP_CONCAT(m.id SEPARATOR ' ') as marks, AVG (m.id) as avg


FROM
    journal as j
        left join users as u  on j.user_id = u.id
          left join marks as m  on j.mark_id = m.id

	left join subjects as subj  on j.subject_id = subj.id
            left join reviews as r  on j.id = r.user_id

			left join semesters as sem  on j.semester_id = sem.id

    where semester_id in (select distinct semester_id from journal)
    group by j.user_id, j.semester_id, j.subject_id";
$res = mysql_query($sql);

//$journal = array('name'=>array(), 'details'=>array());
while ($row = mysql_fetch_assoc($res)) {
    $journal[$row['name']][$row['semester']][] = array($row['subject'] => array ($row['marks']);

}
?>
<table class="tg">
    <?


    foreach ($journal as $user => $semesters) {

        echo '<tr>';
        echo '<td rowspan="'. count($semesters)*3 .' ">' . $user . '</td>';

        foreach ($semesters as $semester => $subjects) {

            echo '<td rowspan="3">' . $semester . '</td>';


            foreach ($subjects as $subject => $marks) {


                foreach ($marks as $k => $v) {

                    echo '<td>' . $k . '</td>';

                }


            }
            echo '</tr><tr>';

            foreach ($subjects as $subject => $marks) {


                foreach ($marks as $k => $v) {

                    echo '<td>' . $v . '</td>';

                }
            }
            echo '</tr><tr>';


            foreach ($subjects as $subject => $marks) {


                foreach ($marks as $k => $v) {

                    echo '<td>Здесь будет средний балл</td>';

                }
            }

            echo '</tr><tr>';



        }
    }

    ?>

</table>
<!--    dfsdf
<table class="tg">
  <tr>
    <th class="tg-031e" rowspan="9">моиван</th>
    <th class="tg-031e" rowspan="3">4 семестр</th>
    <th class="tg-031e">физика</th>
    <th class="tg-031e">биология</th>
    <th class="tg-031e">физку</th>
  </tr>
  <tr>
    <td class="tg-031e">5 5 5&nbsp;</td>
    <td class="tg-031e">4 4 4&nbsp;</td>
    <td class="tg-031e">3 3 3&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-031e">3.6</td>
    <td class="tg-031e">3.6</td>
    <td class="tg-031e">3.6</td>
  </tr>
  <tr>
    <td class="tg-031e" rowspan="3">1 полугодие</td>
    <td class="tg-031e">физика</td>
    <td class="tg-031e">био</td>
    <td class="tg-031e">физку</td>
  </tr>
  <tr>
    <td class="tg-031e">555</td>
    <td class="tg-031e">44 4&nbsp;</td>
    <td class="tg-031e">33 3&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-031e">3.6</td>
    <td class="tg-031e">3.6</td>
    <td class="tg-031e">3.6</td>
  </tr>
  <tr>
    <td class="tg-031e" rowspan="3">3 семестр</td>
    <td class="tg-031e">физика</td>
    <td class="tg-031e">биология</td>
    <td class="tg-031e">физку</td>
  </tr>
  <tr>
    <td class="tg-031e">444&nbsp;</td>
    <td class="tg-031e">55&nbsp;</td>
    <td class="tg-031e">33</td>
  </tr>
  <tr>
    <td class="tg-031e">3.6</td>
    <td class="tg-031e">3.6</td>
    <td class="tg-031e">3.6</td>
  </tr>
</table>


<table class="tg">
    <tr>
        <td class="tg-031e" rowspan="7">Иванов</td>
        <td class="tg-031e" rowspan="3">1 семестр</td>
        <td class="tg-031e">Алгебра</td>
        <td class="tg-031e">РУсский</td>
        <td class="tg-031e">География</td>
        <td class="tg-031e">Физра</td>
    </tr>
    <tr>
        <td class="tg-031e">1 2 3 4 5</td>
        <td class="tg-031e">2 2 3 4 5</td>
        <td class="tg-031e">5 5 5 5 5</td>
        <td class="tg-031e">4 5 4 5</td>
    </tr>
    <tr>
        <td class="tg-031e" colspan="4"></td>
    </tr>
    <tr>
        <td class="tg-031e" rowspan="3">2 семестр</td>
        <td class="tg-031e"></td>
        <td class="tg-031e"></td>
        <td class="tg-031e"></td>
        <td class="tg-031e"></td>
    </tr>
    <tr>
        <td class="tg-031e"></td>
        <td class="tg-031e"></td>
        <td class="tg-031e"></td>
        <td class="tg-031e"></td>
    </tr>
    <tr>
        <td class="tg-031e" colspan="4"></td>
    </tr>
    <tr>
        <td class="tg-031e" colspan="5">Характеристика</td>
    </tr>
</table>    -->

</body>
</html>
