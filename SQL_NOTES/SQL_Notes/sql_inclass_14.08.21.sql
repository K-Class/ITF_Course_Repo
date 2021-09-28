SELECT name
FROM tracks;

SELECT *
FROM tracks;

SELECT name, Composer
FROM tracks;

SELECT *
FROM albums;

SELECT DISTINCT composer 
FROM tracks;

SELECT DISTINCT AlbumId,MediaTypeId
FROM tracks;

SELECT *
FROM invoices
WHERE total> 10;

SELECT name
FROM tracks
WHERE Composer="Jimi Hendrix";

SELECT *
FROM invoices
WHERE total > 10
LIMIT 4;

SELECT *
FROM invoices
WHERE total > 10
ORDER BY InvoiceId ASC
LIMIT 4;

SELECT *
FROM invoices
WHERE total > 10
ORDER BY InvoiceId DESC
LIMIT 4;

SELECT *
FROM employees
WHERE State = "Canada" AND city = "Ottawa";

SELECT *
FROM invoices
WHERE total BETWEEN 10 AND 15;

SELECT *
FROM invoices 
WHERE InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31"
ORDER BY InvoiceDate ASC
LIMIT 5;

SELECT *
FROM invoices
WHERE BillingCountry IN ("Brasil", "Canada", "Germany")
ORDER BY InvoiceId ASC
LIMIT 5; 

SELECT *
FROM invoices
WHERE BillingCountry NOT IN ("Brasil", "Canada", "Germany")
ORDER BY InvoiceDate DESC
LIMIT 10;

SELECT FirstName, LastName, Country
FROM customers
WHERE Country IN ("Belgium", "Norway", "Canada", "USA");

SELECT *
FROM customers
WHERE Country like "B%";

SELECT *
FROM tracks
WHERE Composer like "%Steven Tyler%";

SELECT *
FROM tracks
WHERE Composer like "%Joe Perry";

SELECT *
FROM tracks
WHERE Composer like "St______%";

SELECT FirstName
FROM employees
WHERE FirstName like "El_is";

SELECT name, Composer
FROM tracks
WHERE composer like "%Bach";

