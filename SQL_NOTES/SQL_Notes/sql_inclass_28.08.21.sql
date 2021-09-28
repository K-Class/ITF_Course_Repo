SELECT *
FROM tracks
WHERE Milliseconds > 340000;

SELECT AlbumId, avg(Milliseconds)
FROM tracks
GROUP BY AlbumId;

SELECT AlbumId, avg(Milliseconds)
FROM tracks
WHERE avg(Milliseconds) > 340000
GROUP BY AlbumId;

SELECT AlbumId, avg(Milliseconds)
FROM tracks
GROUP BY AlbumId
HAVING avg(Milliseconds) > 340000;

SELECT *
FROM (SELECT AVG("Milliseconds") AS avg_duration, albums.AlbumId, albums.Title
FROM tracks INNER JOIN albums on  albums.AlbumId=tracks.AlbumId
GROUP BY albums.AlbumId)
WHERE avg_duration >340000;

SELECT TrackId, Name, AlbumId
FROM tracks
WHERE AlbumId =(SELECT AlbumId 
				FROM albums 
				WHERE Title ="Faceless");


SELECT t.TrackId, t.Name, a.AlbumId
FROM tracks t
INNER JOIN albums a ON t.AlbumId = a.AlbumId
WHERE Title = "Faceless";

SELECT * 
FROM albums
WHERE Title IN ("Faceless", "Let There Be Rock");

SELECT TrackId,name,AlbumId
FROM tracks
WHERE AlbumId IN (SELECT AlbumId
					FROM albums
					WHERE Title IN ("Faceless", "Let There Be Rock"));


SELECT t.TrackId, t.Name, a.AlbumId
FROM tracks t
INNER JOIN albums a ON t.AlbumId = a.AlbumId
WHERE a.Title IN ("Faceless" or "Let There Be Rock");

CREATE TABLE customers2
			(Customer_id INT,
			First_name TEXT,
			Last_name TEXT);


DROP TABLE IF EXISTS employee;

CREATE TABLE employee
			(First_name VARCHAR(15),
			Last_name VARCHAR(20),
			age INT,
			hire_date DATE);
			
DROP TABLE IF EXISTS vacation_plan;

CREATE TABLE vacation_plan
			(place_id INT,
			Country VARCHAR(20),
			hotel_name VARCHAR(25),
			employee_id INT,
			Vacation_lenght INT,
			budget INT);

DROP TABLE vacation_plan;

DROP TABLE new_vacation_plan1;	

DROP TABLE new_vacation_plan;	

CREATE TABLE customers2
			(Customer_id INT,
			First_name TEXT,
			Last_name TEXT);
			
INSERT INTO customers2  (Customer_id,First_name,Last_name)
		VALUES  (1, "David", "Hemernik"),
			(2, "Alan","George"),
	         	(3, NULL,"Hans");
				
CREATE TABLE customers3(
			customer_id INT PRIMARY KEY,
			first_name TEXT,
			second_name TEXT);
			
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
			order_id INT,
			order_number INT,
			customer_id INT,
			PRIMARY KEY (order_id)
			FOREIGN KEY (customer_id)
			 REFERENCES customers3(customer_id));
						
DROP TABLE IF EXISTS vacation_plan;

CREATE TABLE vacation_plan (
			place_id INT PRIMARY KEY,
			country TEXT,
			hotel_name VARCHAR(20) NOT NULL,
			EmployeeId INT,
			vacation_length INT,
			budget INT,
			FOREIGN KEY (EmployeeId)
			 REFERENCES employees(EmployeeId));

ALTER TABLE vacation_plan
ADD city TEXT;

ALTER TABLE vacation_plan
DROP vacation_length;