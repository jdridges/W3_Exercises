/*1)What is the product name(s) of the most expensive products? HINT: Find the max price 
in a subquery and then use that value to find products whose price equals that value.*/
SELECT ProductName
FROM products
WHERE UnitPrice= (SELECT MAX(UnitPrice) FROM products);
#1) Cte de Blaye

/*2)What is the product name(s) and categories of the most expensive products? HINT: 
Find the max price in a subquery and then use that in your more complex query that 
joins products with categories. */
SELECT ProductName, CategoryName
FROM products
JOIN categories ON products.CategoryID= categories.CategoryID
WHERE products.UnitPrice= (SELECT MAX(UnitPrice) FROM products);
#2) Cte de Blaye, Beverages

/*3) What is the order id, shipping name and shipping address of all orders shipped via 
"Federal Shipping"? HINT: Find the shipper id of "Federal Shipping" in a subquery and 
then use that value to find the orders that used that shipper.*/
SELECT OrderID, ShipName, ShipAddress
FROM orders
WHERE orders.ShipVia= (SELECT ShipperID FROM shippers WHERE CompanyName = 'Federal Shipping');

/*4) What are the order ids of the orders that ordered "Sasquatch Ale"? HINT: Find the 
product id of "Sasquatch Ale" in a subquery and then use that value to find the 
matching orders from the 'order details' table. Because the 'order details' table has a 
space in its name, you will need to surround it with back ticks in the FROM clause. */
SELECT `order details`.OrderID
FROM `order details`
WHERE `order details`.ProductID= (SELECT ProductID FROM products WHERE ProductName = 'Sasquatch Ale');

#5) What is the name of the employee that sold order 10266? 
SELECT FirstName, LastName
FROM orders
JOIN employees ON orders.EmployeeID = employees.EmployeeID
WHERE OrderID = 10266;
#5) Janet Leverling

#6) What is the name of the customer that bought order 10266? 
SELECT ContactName
FROM orders
JOIN customers ON orders.CustomerID= customers.CustomerID
WHERE OrderID = 10266;
#6) Pirkko Koskitalo