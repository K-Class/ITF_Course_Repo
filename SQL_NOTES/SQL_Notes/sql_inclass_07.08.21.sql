SELECT name FROM tracks;
SELECT name, composer FROM tracks;
SELECT AlbumId, Title, ArtistId FROM albums;
SELECT * FROM invoices ;
SELECT * FROM employees;
SELECT * FROM tracks;
SELECT DISTINCT composer FROM tracks; 
SELECT DISTINCT AlbumId, MediaTypeId FROM tracks;
SELECT DISTINCT * FROM tracks WHERE AlbumId=1 ;
SELECT name FROM tracks WHERE Composer = "Jimi Hendrix" ;
SELECT * FROM invoices WHERE total > 10;
SELECT * FROM invoices WHERE total > 10 LIMIT 4;
SELECT * FROM invoices ORDER BY total ASC;
SELECT *
FROM invoices
WHERE total > 10
ORDER BY total DESC;

SELECT *
FROM invoices
WHERE NOT BillingCountry = "USA" 
ORDER BY total ASC;
 
SELECT *
FROM invoices
WHERE  InvoiceDate BETWEEN "2009-01-01" AND "2011-12-31"
ORDER BY InvoiceDate DESC
LIMIT 1;

SELECT InvoiceDate
FROM invoices
WHERE  InvoiceDate BETWEEN "2009-01-01" AND "2011-12-31"
ORDER BY InvoiceDate DESC
LIMIT 1;

SELECT InvoiceDate
FROM invoices
WHERE  InvoiceDate BETWEEN "2009-01-01" AND "2011-12-28"
ORDER BY InvoiceDate DESC
LIMIT 1;