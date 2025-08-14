-- 1. soru
SELECT 
	COUNT(*) AS usa_total_invoice_count
FROM invoice
WHERE billing_country = 'USA';

-- 2.soru
SELECT
	t.track_id,
	t.name,
	t.album_id,
	t.mediatype_id,
	t.genre_id,
	t.composer
FROM track t
JOIN playlisttrack pt ON t.track_id = pt.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;

-- 3.soru
SELECT
	t.*,
	art.*
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN artist art ON a.artist_id = art.artist_id
WHERE a.title = 'Let There Be Rock'
ORDER BY t.milliseconds DESC;