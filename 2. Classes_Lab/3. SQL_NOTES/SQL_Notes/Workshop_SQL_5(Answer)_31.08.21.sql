SELECT name, Composer
FROM tracks;

SELECT *
FROM tracks;

SELECT DISTINCT Composer
FROM tracks;

SELECT DISTINCT AlbumId,MediaTypeId
FROM tracks;

SELECT name,TrackId
FROM tracks
WHERE Composer="Jorge Ben";

SELECT *
FROM invoices
WHERE total > 25;

SELECT *
FROM invoices
WHERE total < 15
LIMIT 5;

SELECT *
FROM invoices
WHERE total > 10
ORDER by total DESC
LIMIT 2;

SELECT *
FROM invoices
WHERE BillingCountry != "Canada"
ORDER by total ASC
LIMIT 10;

SELECT *
FROM invoices
WHERE BillingCountry NOT IN "Canada"
ORDER by total ASC
LIMIT 10;

SELECT InvoiceId,CustomerId,total
FROM invoices
ORDER by CustomerId ASC , total DESC;

SELECT *
FROM tracks
WHERE name like "B%S";

SELECT InvoiceDate
FROM invoices
WHERE InvoiceDate BETWEEN "2008-01-01" AND "2012-01-01"
ORDER by InvoiceDate DESC
LIMIT 1;

SELECT InvoiceDate
FROM invoices
WHERE InvoiceDate BETWEEN "2008%" AND "2012%"
ORDER by InvoiceDate DESC
LIMIT 1;

SELECT InvoiceDate
FROM invoices
WHERE
	(SELECT strftime("%Y",invoiceDate)
	from invoices)
BETWEEN "2009" AND "2011"
ORDER by InvoiceDate DESC
LIMIT 1;

SELECT *
from customers;

SELECT FirstName, LastName
FROM customers
WHERE country IN ("Norway","Belgium");

SELECT name, Composer
FROM tracks
WHERE composer like "%Zappa%";

SELECT count(TrackId)
from tracks;

SELECT count(InvoiceId)
from invoices;

SELECT count(DISTINCT composer)
FROM tracks;

SELECT AlbumId,count(name) 
FROM tracks
GROUP by AlbumId
ORDER BY count(name)DESC;

SELECT name, min(milliseconds)
FROM tracks;

SELECT name, max(milliseconds)
FROM tracks;

SELECT *
FROM tracks
WHERE Milliseconds < 
					(SELECT avg(milliseconds)
                     FROM tracks);

SELECT Composer, count(*)
FROM tracks
GROUP by Composer;

SELECT tracks.Name, genres.GenreId
FROM tracks
INNER JOIN genres on tracks.GenreId=genres.GenreId;

SELECT * 
FROM albums
INNER JOIN artists on albums.ArtistId=artists.ArtistId;

SELECT albums.AlbumId,albums.Title,min(tracks.Milliseconds)
FROM tracks
INNER JOIN albums on albums.AlbumId=tracks.AlbumId
GROUP by tracks.AlbumId
ORDER by tracks.Milliseconds DESC;

SELECT albums.Title, sum(tracks.Milliseconds)
FROM tracks
JOIN albums on tracks.AlbumId = albums.AlbumId
GROUP by tracks.AlbumId
HAVING tracks.Milliseconds > 360000
ORDER by tracks.Milliseconds DESC;

SELECT TrackId, name, AlbumId
FROM tracks
WHERE AlbumId in (SELECT AlbumId
                  FROM albums
                  WHERE Title in ("Prenda Minha", "Heart of the Night", "Out of Exile"));
