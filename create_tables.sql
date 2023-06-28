-- Музыкальная коллекция
-- Композиция:
--  - название
--  - длительность
--  - год создания
--
-- Испольнитель:
--  - название
--
-- Альбом:
--  - название
--  - исполнитель
--
-- Список композиций в альбоме:
--  - альбом
--  - композиция
--  - порядковый номер композиции

CREATE TABLE table_songs(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    duration TEXT NOT NULL, -- hh:mm:ss
    year_creation TEXT NOT NULL -- yyyy
);

CREATE TABLE table_performers (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE table_albums (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    performer_id INTEGER NOT NULL,
    FOREIGN KEY (performer_id)
        REFERENCES table_performers(id)
);

CREATE TABLE table_songs_in_albums (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    album_id INTEGER NOT NULL,
    song_id INTEGER NOT NULL,
    number INTEGER NULL,
    FOREIGN KEY (album_id)
        REFERENCES table_albums(id),
    FOREIGN KEY (song_id)
        REFERENCES table_songs(id)
);