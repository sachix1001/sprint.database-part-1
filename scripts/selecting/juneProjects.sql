-- Your SQL here
SELECT DISTINCT projects.name FROM projects 
inner join students_to_projects on projects.id = students_to_projects.project_id
inner join students on students.id =  students_to_projects.student_id
inner join checkins on checkins.student_id = students.id 
where date_part('year', checked_in_at) = 2016 AND date_part('month', checked_in_at) = 6;