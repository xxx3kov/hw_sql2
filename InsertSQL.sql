INSERT INTO artists (nickname) VALUES
    ('Falling in Reverse'),
    ('Linkin Park'),
    ('Bad Omens'),
    ('Король и Шут'),
    ('1.Kla$'),
    ('Palmdropov'),
    ('Oxxxymiron'),
    ('Кровосток'),
    ('xxx3kov');


-- TRUNCATE TABLE Artists RESTART IDENTITY CASCADE (для полного удаления таблицы и обнуления ID)

INSERT INTO genres (name) VALUES
    ('Rock'),
    ('Hip hop'),
    ('Rap music'),
    ('Post-hardcore'),
    ('Hard music xxx');


INSERT INTO Music_albums (release_year, title) VALUES
    ('2022-02-25', 'THE DEATH OF PEACE OF MIND'),
    ('2020-01-17', 'Finding God Before God Finds Me (Deluxe)'),
    ('2003-03-25', 'Meteora'),
    ('2025-01-12', 'Nothing');


INSERT INTO Tracks (duration, name_track, AlbumID) VALUES
    (220, 'CONCRETE JUNGLE', 1),
    (246, 'Nowhere to Go', 1),
    (199, 'Take Me First', 1),
    (241, 'THE DEATH OF PEACE OF MIND', 1),
    (103, 'What It Cost', 1),
    (210, 'Like A Villain', 1),
    (261, 'bad decisions', 1),
    (204, 'Just Pretend', 1),
    (246, 'The Grey', 1),
    (217, 'Who are you?', 1),
    (236, 'Somebody else', 1),
    (202, 'IDWT$', 1),
    (175, 'What do you want from me?', 1),
    (195, 'ARTIFICIAL SUICIDE', 1),
    (225, 'Miracle', 1);


INSERT INTO Tracks (duration, name_track, AlbumID) VALUES
    (261,  'Kingdom Of Cards', 2),
    (236,  'Running in Circles', 2),
    (272,  'Careful What You Wish For', 2),
    (214,  'The Hell I Overcame', 2),
    (209,  'Dethrone', 2),
    (230,  'Blood', 2),
    (317,  'Mercy', 2),
    (204,  'Said & Done', 2),
    (265,  'Burning Out', 2),
    (321,  'If I''m There', 2),
    (213,  'Never Know', 2),
    (207,  'Limits', 2),
    (261,  'Come Undone', 2);


INSERT INTO Tracks (duration, name_track, AlbumID) VALUES
    (13, 'Foreword', 3),
    (308, 'Don''t Stay', 3),
    (334, 'Somewhere I Belong', 3),
    (255, 'Lying from You', 3),
    (244, 'Hit the Floor', 3),
    (324, 'Easier to Run', 3),
    (242, 'Faint', 3),
    (318, 'Figure.09', 3),
    (316, 'Breaking the Habit', 3),
    (256, 'From the Inside', 3),
    (300, 'Nobody''s Listening', 3),
    (200, 'Session', 3),
    (300, 'Numb', 3);


INSERT INTO Tracks (duration, name_track, AlbumID) VALUES
    (100, 'Nothing my nothing', 4),
    (400, 'Nothing else', 4),
    (333, 'Nothing but', 4);


INSERT INTO Collection (name_collection, release_year) VALUES
    ('The Best', '2018-01-01'),
    ('Roooock', '2024-12-15'),
    ('Music love', '2020-02-20'),
    ('For you', '2020-01-25');


INSERT INTO ArtistsAlbums (ArtistID, AlbumID) VALUES
    (2, 3),  
    (3, 1),  
    (3, 2), 
    (9, 4); 

INSERT INTO CollectionTracks (CollectionID, TrackID) VALUES
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 12),
    (1, 20),
    (2, 2),
    (2, 5),
    (2, 10),
    (2, 22),
    (2, 23),
    (3, 1),
    (3, 2), 
    (3, 3),
    (4, 13),
    (4, 3),
    (4, 25),
    (4, 26), 
    (4, 44);

INSERT INTO ArtistGenre (ArtistID, GenreID) VALUES
    (1, 1),
    (1, 4),
    (2, 1),
    (3, 1),
    (3, 4),
    (4, 1),
    (5, 3),
    (6, 3),
    (7, 3),
    (8, 2),
    (9, 5);

