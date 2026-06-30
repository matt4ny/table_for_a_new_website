CREATE TABLE Genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Artist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE Album (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT CHECK (release_year > 1900)
);

CREATE TABLE Collection (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT CHECK (release_year > 1900)
);

CREATE TABLE Track (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    duration INT NOT NULL CHECK (duration > 0), -- длительность в секундах
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Album(id) ON DELETE CASCADE
);

CREATE TABLE ArtistGenre (
    artist_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (artist_id, genre_id),
    FOREIGN KEY (artist_id) REFERENCES Artist(id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES Genre(id) ON DELETE CASCADE
);

CREATE TABLE ArtistAlbum (
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (artist_id, album_id),
    FOREIGN KEY (artist_id) REFERENCES Artist(id) ON DELETE CASCADE,
    FOREIGN KEY (album_id) REFERENCES Album(id) ON DELETE CASCADE
);

CREATE TABLE CollectionTrack (
    collection_id INT NOT NULL,
    track_id INT NOT NULL,
    PRIMARY KEY (collection_id, track_id),
    FOREIGN KEY (collection_id) REFERENCES Collection(id) ON DELETE CASCADE,
    FOREIGN KEY (track_id) REFERENCES Track(id) ON DELETE CASCADE
);