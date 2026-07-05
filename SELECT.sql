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
   OR title LIKE 'My'       
   OR title LIKE 'Мой %' 
   OR title LIKE '% мой %' 
   OR title LIKE '% мой' OR title LIKE 'Мой';

   SELECT g.name AS genre_name, COUNT(ag.artist_id) AS artist_count
FROM Genre g
JOIN ArtistGenre ag ON g.id = ag.genre_id
GROUP BY g.name; 

SELECT COUNT(t.id) AS tracks_count
FROM Track t
JOIN Album a ON t.album_id = a.id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.title AS album_title, AVG(t.duration) AS avg_duration
FROM Album a
JOIN Track t ON a.id = t.album_id
GROUP BY a.id, a.title;

SELECT name 
FROM Artist 
WHERE id NOT IN (
    SELECT aa.artist_id 
    FROM ArtistAlbum aa
    JOIN Album a ON aa.album_id = a.id
    WHERE a.release_year = 2020
    AND aa.artist_id IS NOT NULL 
);

SELECT DISTINCT c.title AS collection_title
FROM Collection c
JOIN CollectionTrack ct ON c.id = ct.collection_id
JOIN Track t ON ct.track_id = t.id
JOIN ArtistAlbum aa ON t.album_id = aa.album_id
JOIN Artist ar ON aa.artist_id = ar.id
WHERE ar.name = 'Kendrick Lamar';