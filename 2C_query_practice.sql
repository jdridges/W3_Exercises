# 1)
SELECT ProductID, ProductName, UnitPrice FROM northwind.products
ORDER BY UnitPrice;

# 2)
SELECT ProductName, UnitPrice, UnitsInStock FROM products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC ;

/* 2 continued)  These Product names are:
Rhnbru Klosterbier, Boston Crab Meat, Grandma's Boysenberry Spread,
Pt chinois, Sirop d'rable, Geitost, Inlagd Sill, Sasquatch Ale, 
Gustaf's Knckebrd, Rd Kaviar*/

# 3) 
SELECT ProductName, UnitsInStock AS 'Units on hand', UnitPrice AS 'Price'
 FROM products
WHERE UnitsInStock >= 100
ORDER BY Price DESC, ProductName ASC ;

#4 
 SELECT COUNT(DISTINCT CustomerID) AS 'Total Orders'
 FROM northwind.orders;
 #4 continued) 89 distinct orders have been made
 
 #5)
 SELECT ShipCountry, COUNT(DISTINCT CustomerID) As 'Total Orders'
 FROM northwind.orders
 WHERE ShipCountry IS NOT NULL
 GROUP BY ShipCountry;
 
 #6)
 SELECT ProductName, UnitsInStock, UnitsOnOrder
 FROM northwind.products
 WHERE UnitsInStock=0 AND UnitsOnOrder>=1
 ORDER BY ProductName;
 #6) only Gorgonzola Telino meets these requirements. 
 
 #7) 
 SELECT DISTINCT Title FROM employees;
 /*7 continued) Distinct titles include:
Sales Representative,(Vice President, Sales), Sales Manager,
and Inside Sales Coordinator.*/

#8)
SELECT EmployeeID, FirstName, LastName, Title, Salary
FROM northwind.employees
WHERE Salary BETWEEN 2000 AND 2500
ORDER BY Title;
/* 8 continued) Laura Callahan, Michael Suyama, Anne Dodsworth, and Andrew Fuller
all have salaries between 2000 and 2500, ordered by title. */



 
 

