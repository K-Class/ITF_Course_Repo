SELECT count(*)
FROM invoices;

SELECT count(DISTINCT Composer) AS farklı_composer_sayısı_null_haric
FROM tracks;

SELECT count(*) AS farklı_composer_sayısı_null_dahil
FROM tracks;

SELECT min(total) As min_total
FROM invoices;  

SELECT max(total) As min_total
FROM invoices;

SELECT max(Milliseconds) AS max_milliseconds
FROM tracks;

SELECT *
FROM tracks
WHERE Milliseconds > (SELECT avg(Milliseconds)
FROM tracks)
ORDER BY Milliseconds ASC
LIMIT 10;

SELECT Composer, count(*)
FROM tracks
GROUP by Composer;

SELECT Composer, count(composer)
FROM tracks
GROUP by Composer;

SELECT Country, count(country)
FROM customers
GROUP by Country;

SELECT AlbumId, min(milliseconds)
FROM tracks
GROUP by AlbumId;

SELECT BillingCountry, sum(total)
FROM invoices
GROUP by BillingCountry;

SELECT BillingCountry, avg(total)
FROM invoices
GROUP by BillingCountry;

SELECT * FROM genres;

SELECT * FROM tracks;

SELECT tracks.name, genres.Name
FROM tracks
INNER JOIN genres ON tracks.GenreId=genres.GenreId;
 
SELECT * FROM customers;

SELECT * FROM invoices;

SELECT invoices.InvoiceId, customers.FirstName, customers.LastName
FROM invoices
INNER JOIN customers ON invoices.CustomerId=customers.CustomerId;

SELECT * FROM albums;

SELECT * FROM artists;

SELECT artists.ArtistId, artists.Name, albums.AlbumId
FROM artists
LEFT JOIN albums ON artists.ArtistId=albums.AlbumId;

SELECT artiz.ArtistId, artiz.name, alb.AlbumId
FROM artists artiz
LEFT JOIN albums alb ON artiz.ArtistId=alb.ArtistId;

SELECT * 
FROM albums
WHERE Title like "Faceless";

SELECT * FROM tracks;

SELECT TrackId, name, AlbumId
FROM tracks
WHERE AlbumId=(SELECT AlbumId 
				FROM albums
				WHERE Title like "Faceless");


SELECT tracks.TrackId,tracks.Name, albums.AlbumId 
FROM tracks
INNER JOIN albums on tracks.AlbumId = albums.AlbumId
WHERE albums.Title = 'Faceless';