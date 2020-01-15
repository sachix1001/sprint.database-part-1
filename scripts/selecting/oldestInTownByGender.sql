-- Your SQL here
select distinct students.* from students, 
  (select min(date_of_birth) min_date_of_birth, town_of_origin from students where gender = 'F' GROUP BY town_of_origin) Oldestfemale,
  (select min(date_of_birth) min_date_of_birth, town_of_origin from students where gender = 'M' GROUP BY town_of_origin) Oldestmale
where
  (students.gender = 'F' AND students.date_of_birth = Oldestfemale.min_date_of_birth AND students.town_of_origin = Oldestfemale.town_of_origin) or
  (students.gender = 'M' AND students.date_of_birth = Oldestmale.min_date_of_birth AND students.town_of_origin = Oldestmale.town_of_origin);
