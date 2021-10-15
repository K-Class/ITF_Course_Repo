SELECT categoryname,description
FROM category
ORDER by categoryname;

SELECT FirstName,LastName,HireDate
FROM Employees
ORDER by HireDate DESC;

SELECT CompanyName,Fax,Phone,HomePage,Country
FROM Supplier
ORDER by Country DESC, CompanyName ASC;

SELECT CompanyName,ContactName
FROM Customers
WHERE City="Buenos Aires";

SELECT ProductName,UnitPrice,QuantityPerUnit
FROM Product
WHERE UnitsInStock=0;

SELECT OrderDate,ShippedDate,CustomerId,Freight
FROM Orders
where OrderDate="2012-07-19";

SELECT FirstName,LastName,Country
FROM Employees
WHERE Country!="USA";

SELECT FirstName,LastName,Country
FROM Employees
WHERE NOT Country = "USA";

SELECT EmployeeId,OrderId,CustomerId,ShippedDate
FROM Orders
where RequiredDate < ShippedDate;


SELECT CompanyName,ContactName,Fax
FROM Customers
WHERE Fax IS NOT NULL
ORDER by CompanyName;

SELECT City,CompanyName,ContactName
FROM Customers
WHERE City like "A%" or City like "B%"
ORDER BY ContactName DESC;


SELECT FirstName,LastName,BirthDate
FROM Employees
WHERE BirthDate like "198%";

SELECT Product.ProductName,Product.SupplierId,Supplier.CompanyName
FROM Product
INNER JOIN Supplier on Supplier.SupplierId=Product.SupplierId
WHERE Supplier.CompanyName in ("Exotic Liquids","Grandma Kelly's Homestead","Tokyo Traders");

SELECT ProductName, SupplierId
FROM Product
WHERE SupplierId IN
(SELECT SupplierId
FROM Supplier
WHERE CompanyName IN (‘Exotid Liquids’, “Grandma Kelly’s Homestead”, ‘Tokyo Traders’));

SELECT *
FROM Customers;

SELECT ContactName,ContactTitle,CompanyName
FROM Customers
WHERE ContactTitle NOT LIKE "%Sales%";

SELECT ContactTitle,CompanyName,City,Country
FROM Customers
WHERE Country = "Mexico" or Country = "Spain" and city <> "Madrid";

SELECT lower(ContactTitle) as lowertitle
FROM Customers;

SELECT *
from Category;

SELECT Product.ProductName, Product.CategoryId,Category.CategoryId
FROM Product
INNER join Category on Product.CategoryId=Category.CategoryId
where Category.CategoryName="Seafood";

SELECT ProductId, SUM ("Quantity")
FROM OrderDetail
GROUP BY ProductId
HAVING SUM (Quantity) < 200
ORDER BY totalquantity;

SELECT ProductId, SUM ("Quantity") as totalquantity
FROM OrderDetail
GROUP BY ProductId
HAVING totalquantity < 200
ORDER BY totalquantity;