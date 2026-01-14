SELECT duration, name_track 
FROM tracks 
order by duration desc 
limit 1;

-- добавил '='
SELECT name_track 
FROM tracks
WHERE duration >= 3.5 * 60;

-- исправил чтобы поиска по годам был корректный
SELECT name_collection 
FROM collection
WHERE EXTRACT(YEAR FROM release_year) BETWEEN 2018 AND 2020;

SELECT nickname
FROM artists
WHERE nickname NOT LIKE '% %';

-- исправил запрос 'my', проверил, ищет верно, спасибо за подсказу
SELECT name_track
FROM tracks
WHERE string_to_array(lower(name_track), ' ') && ARRAY ['my'];

SELECT g.name AS genre_name, COUNT(a.id) AS artist_count
FROM genres g
JOIN ArtistGenre ag ON g.id = ag.GenreID
JOIN artists a ON ag.ArtistID = a.id
GROUP BY g.name
ORDER BY artist_count DESC;

SELECT count(t.id) AS track_count
FROM music_albums ma 
JOIN tracks t ON ma.id = t.albumid 
WHERE EXTRACT(YEAR FROM ma.release_year) BETWEEN 2019 AND 2020;

-- поправил запрос на среднее значение, сделал с округлением
SELECT ma.title AS title, ROUND(AVG(duration), 0)
FROM music_albums ma
JOIN tracks t ON ma.id = t.albumid
GROUP BY ma.id
ORDER BY ma.id;

-- исправил запрос, исполнители, у которых нет альбомов 2020 года 
SELECT nickname /* Получаем имена исполнителей */
FROM artists a  /* Из таблицы исполнителей */
WHERE nickname NOT IN ( /* Где имя исполнителя не входит в вложенную выборку */
    SELECT nickname /* Получаем имена исполнителей */
    FROM artists a /* Из таблицы исполнителей */
    JOIN artistsalbums a2 ON a.id = a2.artistid  /* Объединяем с промежуточной таблицей */
    JOIN music_albums ma ON ma.id = a2.albumid  /* Объединяем с таблицей альбомов */
    WHERE EXTRACT(YEAR FROM ma.release_year) = 2020/* Где год альбома равен 2020 */
);

SELECT DISTINCT c.name_collection
FROM COLLECTION c
JOIN collectiontracks c2 ON c.id = c2.collectionid
JOIN tracks t ON c2.trackid = t.id
JOIN music_albums ma ON t.albumid = ma.id
JOIN artistsalbums aa ON ma.id = aa.albumid
JOIN artists a2 ON aa.artistid = a2.id
WHERE a2.nickname = 'xxx3kov'

