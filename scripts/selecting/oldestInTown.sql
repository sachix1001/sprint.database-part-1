-- Your SQL here
select min(date_of_birth), town_of_origin from students GROUP BY town_of_origin;