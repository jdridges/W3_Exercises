SELECT ProductID, ProductName, UnitPrice From northwind.products
WHERE UnitPrice <= 7.5;

/* 2) products carried that are 7.50 or less are
Konbu, Guaran Fantastica, Geitost, Filo Mix,
and Tourtire.*/

SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder FROM northwind.products
WHERE UnitsInStock = 0 AND UnitsOnOrder >= 1;

/* 3) The product that are carried that have no units on hand, but 
1 or more units on backorder is Gorgonzola Telino*/

SELECT * FROM products
WHERE CategoryID=8;
/* 4) CategoryID is used to identify the category of items sold.
The categoryID for Seafood is 8, so I wrote a query to list only these items.*/

SELECT * FROM employees
WHERE Title LIKE '%manager%'; 
# 5) Steven Buchanan has Manager in his title. 

SELECT * FROM products
WHERE SupplierID = 4;

/* SupplierID shows which supplier supplies each product.
Tokyo Trader's SupplyID is 4, so the query reflects this. */