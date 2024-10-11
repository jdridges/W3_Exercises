/*1)List the product id, product name, unit price and category name of all products. Order 
by category name and within that, by product name. */
SELECT products.ProductID, products.ProductName, products.UnitPrice,categories.CategoryName
FROM northwind.products
JOIN northwind.categories
ON products.CategoryID=categories.CategoryID
ORDER BY categories.CategoryName, products.ProductName;

/*2) List the product id, product name, unit price and supplier name of all products that 
cost more than $75. Order by product name.*/
SELECT products.ProductID, products.ProductName, products.UnitPrice, 
suppliers.CompanyName AS 'Supplier Name'
FROM northwind.products
JOIN northwind.suppliers
ON products.SupplierID=suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY ProductName;
/* 2 continued) The product names that fit these parameters are:
Cte de Blaye, Mishi Kobe Niku, Sir Rodney's Marmalade, Thringer Rostbratwurst*/

/*3) List the product id, product name, unit price, category name, and supplier name of 
every product. Order by product name.*/
SELECT products.ProductID, products.ProductName, products.UnitPrice, 
categories.CategoryName, suppliers.CompanyName AS 'Supplier Name'
FROM categories
JOIN products
ON categories.CategoryID=products.CategoryID
JOIN suppliers
ON products.SupplierID=suppliers.SupplierID
ORDER BY ProductName;

/* 4) List the order id, ship name, ship address, and shipping company name of every order 
that shipped to Germany. */
SELECT orders.OrderID, orders.ShipName, orders.ShipAddress, shippers.CompanyName
AS 'Shipper Company Name'
FROM northwind.shippers
JOIN northwind.orders
ON shippers.ShipperID=orders.ShipVia
WHERE orders.ShipCountry = 'Germany';
/* check the foregin key tab to understand the relationship between tables
(sometimes the foreign key is listed as a different name in one column like
'ShipVia in orders vs ShipperID(PK) in shippiers)*/

/*5) List the order id, order date, ship name, ship address of all orders that ordered 
"Sasquatch Ale" */
SELECT orders.OrderID, orders.OrderDate, orders.ShipName, orders.ShipAddress
 FROM orders
 JOIN northwind.`order details`
 ON orders.OrderID= `order details`.OrderID
 JOIN northwind.products
 ON `order details`.ProductID=products.ProductID
 WHERE ProductName= 'Sasquatch Ale';

