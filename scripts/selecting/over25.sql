-- Your SQL here
select * from students where date_of_birth < CURRENT_DATE - INTERVAL '25 year';