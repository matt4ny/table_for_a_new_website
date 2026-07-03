INSERT INTO Genre (id, name) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-Hop'),
(4, 'Electronic');

INSERT INTO Artist (id, name) VALUES
(1, 'Whitesnake'),
(2, 'Taylor Swift'),
(3, 'Kendrick Lamar'),
(4, 'Skrillex'),
(5, 'Bring Me The Horizon');

INSERT INTO Album (id, title, release_year) VALUES
(1, 'Flesh & Blood', 2019),
(2, 'Folcore', 2020),
(3, 'GNX', 2024),
(4, 'amo', 2019),
(5, 'SOMA', 2026);

INSERT INTO Collection (id, title, release_year) VALUES
(1, 'Greatest Hits', 2022),
(2, '2003-2014', 2018),
(3, 'HOWSLA', 2018),
(4, 'untitled', 2026);

INSERT INTO Track (id, title, duration, album_id) VALUES
(1, 'Flesh & Blood', 370, 1), 
(2, 'My Tears Ricochet', 220, 2),       
(3, 'Seven', 200, 2),           
(4, 'Man at the Garden', 190, 3),        
(5, 'In the Dark', 391, 4),         
(6, 'Bad Blood', 326, 3),     
(7, 'Soma', 205, 5);       

INSERT INTO ArtistGenre (artist_id, genre_id) VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(4, 3), 
(5, 1), 
(5, 3); 

INSERT INTO ArtistAlbum (artist_id, album_id) VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(2, 3), 
(5, 4), 
(4, 5); 

INSERT INTO CollectionTrack (collection_id, track_id) VALUES
(1, 1), 
(4, 4), 
(4, 6), 
(1, 2),
(1, 6);