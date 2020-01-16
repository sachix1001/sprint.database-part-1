-- Your SQL here
select stu_tmp.first_name , stu_tmp.last_name from students stu_tmp
where NOT EXISTS 
  (select DISTINCT students.id from students, students_to_projects 
   where students.id = students_to_projects.student_id
   AND students.id = stu_tmp.id);