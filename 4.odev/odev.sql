-- 1.soru
SELECT
	a.album_id,
	a.title,
	ROUND(AVG(t.milliseconds), 2) AS avg_track_length_ms
FROM album a
JOIN track t ON a.album_id = t.track_id
GROUP BY a.album_id;

-- 2.soru
SELECT
	a.album_id,
	a.title,
	MAX(t.milliseconds) AS longest_track
FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.album_id;

-- 3.soru
SELECT
	t.track_id,
	t.name,
	t.unitprice,
	a.album_id,
	a.title,
	ar.artist_id,
	ar.name
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN artist ar ON a.artist_id = ar.artist_id
ORDER BY t.unitprice DESC
LIMIT 5;