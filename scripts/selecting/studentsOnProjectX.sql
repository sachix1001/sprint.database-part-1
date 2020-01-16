-- Your SQL here
SELECT students.first_name, students.last_name from students inner join students_to_projects on students_to_projects.student_id = students.id
where students_to_projects.project_id = 5;