-- Your SQL here
UPDATE students SET date_of_birth = date_of_birth + INTERVAL '100 year' 
  WHERE date_of_birth < CURRENT_DATE - INTERVAL '100 year';