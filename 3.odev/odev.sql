-- 1. soru
SELECT 
	country,
	COUNT(*) AS customer_count
FROM customer
GROUP BY country
ORDER BY customer_count DESC;

-- 2.soru
SELECT
	a.name,
	COUNT(al.album_id) AS album_count
FROM artist a
JOIN album al ON a.artist_id = al.artist_id
GROUP BY a.artist_id
ORDER BY album_count DESC;

-- 3.soru
SELECT 
	t.track_id,
	t.name,
	t.milliseconds,
	a.artist_id,
	a.name,
	al.album_id,
	al.title
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN artist a ON al.artist_id = a.artist_id
ORDER BY t.milliseconds DESC
LIMIT 10;