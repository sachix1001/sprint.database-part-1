--  your SQL here
SELECT DISTINCT students.* FROM students inner join checkins on checkins.student_id = students.id 
where date_part('year', checked_in_at) = 2016 AND date_part('month', checked_in_at) = 6;