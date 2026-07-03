SELECT g.name AS genre_name, COUNT(ag.artist_id) AS artist_count
FROM Genre g
JOIN ArtistGenre ag ON g.id = ag.genre_idGROUP BY g.name;

SELECT COUNT(t.id) AS tracks_count
FROM Track t
JOIN Album a ON t.album_id = a.idWHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.title AS album_title, AVG(t.duration) AS avg_duration
FROM Album a
JOIN Track t ON a.id = t.album_idGROUP BY a.title;

SELECT name 
FROM Artist 
WHERE id NOT IN (
    SELECT aa.artist_id 
    FROM ArtistAlbum aa
    JOIN Album a ON aa.album_id = a.id
    WHERE a.release_year = 2020);
    
SELECT DISTINCT c.title AS collection_title
FROM Collection c
JOIN CollectionTrack ct ON c.id = ct.collection_id
JOIN Track t ON ct.track_id = t.id
JOIN ArtistAlbum aa ON t.album_id = aa.album_id
JOIN Artist ar ON aa.artist_id = ar.idWHERE ar.name = 'Kendrick Lamar';