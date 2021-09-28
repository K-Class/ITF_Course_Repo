SELECT InvoiceId, CustomerId, total
FROM invoices
ORDER BY CustomerId ASC, total DESC;

SELECT InvoiceId, CustomerId, total
FROM invoices
ORDER BY total DESC, CustomerId ASC;

SELECT *
FROM invoices
WHERE total >= 10
LIMIT 10;

SELECT *
FROM invoices
WHERE total < 10
LIMIT 10;

SELECT name
FROM tracks
WHERE name LIKE 'B%s'


SELECT *
FROM invoices
WHERE BillingCountry IN ('USA', 'Germany', 'Canada', 'Norway')
AND InvoiceDate BETWEEN "2010-01-01" AND "2011-01-01"  
ORDER BY InvoiceDate DESC;