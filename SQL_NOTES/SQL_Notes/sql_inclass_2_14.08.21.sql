SELECT * FROM tracks;

SELECT count(AlbumId) AS sarki_sayisi
FROM tracks;

SELECT count(*) AS sarki_sayisi
FROM tracks;

SELECT count(*) AS sarki_sayisi
FROM tracks
WHERE Composer is NULL;

SELECT count(*) AS null_olmayanlar
FROM tracks
WHERE Composer is NOT NULL;

SELECT count(*) AS kaç_tane_satır
FROM invoices;

SELECT count(DISTINCT Composer) AS kaç_tane_composer
FROM tracks;

SELECT min(HireDate) AS earliest_date
FROM employees;


SELECT name AS min_track_name, 
MIN(Milliseconds) AS min_track_time
FROM tracks;

SELECT name AS max_track_name
max(Milliseconds) AS max_track_time
FROM tracks;

SELECT sum(total) AS total_revenue
FROM invoices;

SELECT * FROM invoices;

SELECT DISTINCT strftime("%Y", Invoicedate) AS kaç_yıl
FROM invoices;

SELECT DISTINCT substr(InvoiceDate,1,4) As Yıllar
FROM invoices;

SELECT strftime("%Y", InvoiceDate) AS yillar, COUNT(strftime("%Y", InvoiceDate)) AS adet
FROM invoices
GROUP BY strftime("%Y", InvoiceDate); 

SELECT avg(Milliseconds)
FROM tracks;

SELECT *
FROM tracks
WHERE Milliseconds > 393599.212103911
ORDER BY Milliseconds ASC
LIMIT 10;

SELECT *
FROM tracks
WHERE Milliseconds > (SELECT avg(Milliseconds)
FROM tracks)
ORDER BY Milliseconds ASC
LIMIT 10;

SELECT * FROM tracks;

SELECT Composer, count(name)
FROM tracks
GROUP by Composer;

SELECT Composer, count(TrackId)
FROM tracks
GROUP by Composer;

SELECT Composer, count(Composer)
FROM tracks
GROUP by Composer;

SELECT count(name)
FROM tracks;

SELECT count(Composer)
FROM tracks;