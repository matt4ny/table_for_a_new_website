SELECT title, duration 
FROM Track 
ORDER BY duration DESC LIMIT 1;

SELECT title 
FROM Track WHERE duration >= 210;

SELECT title 
FROM Collection WHERE release_year BETWEEN 2018 AND 2020;

SELECT name 
FROM Artist WHERE name NOT LIKE '% %';

SELECT title 
FROM Track 
WHERE title LIKE 'My %'     
   OR title LIKE '% my %'   
   OR title LIKE '% my'     
   OR title LIKE 'My'  '     
   OR title LIKE 'Мой %' 
   OR title LIKE '% мой %' 
   OR title LIKE '% мой' OR title LIKE 'Мой';