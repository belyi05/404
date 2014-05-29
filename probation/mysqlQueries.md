

//сводная таблица 10 студентов с наивысшим баллом

SELECT j.user_id,
       u.name,
       u.group_id,
       TRUNCATE (AVG (m.id), 2) AS AVG
FROM journal AS j
LEFT JOIN users AS u ON j.user_id = u.id
LEFT JOIN marks AS m ON j.mark_id = m.id
GROUP BY j.user_id
ORDER BY AVG DESC





//однокурсники со средним баллом от 2 до 3 (группа 4)

SELECT j.user_id,
       u.name,
       u.group_id,
       TRUNCATE (AVG (m.id), 2) AS AVG
FROM journal AS j
LEFT JOIN users AS u ON j.user_id = u.id
LEFT JOIN marks AS m ON j.mark_id = m.id
WHERE u.group_id=4
GROUP BY j.user_id HAVING AVG BETWEEN 2 AND 3
ORDER BY AVG DESC



//всех людей с ip более одной регистрации

SELECT u.id,
       u.name,
       u.ip,
       r.text,
       count(u.ip) AS count_ip_reg
FROM users AS u
LEFT JOIN reviews AS r ON u.id=r.user_id
WHERE r.text IS NOT NULL
GROUP BY u.id HAVING count(ip)>1

  fk_[ссылающейся таблицы name]_[ссылки поле name]_[имя таблицы, на которую ссылается]_[ссылки имя поля]