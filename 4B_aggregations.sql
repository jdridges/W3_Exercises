# 1)What is the price of the cheapest item that Northwind sells?
SELECT MIN(UnitPrice) AS 'Cheapest Item'
FROM products;
#1 continued) $2.50 is the price of the cheapest item northwind sells

#2) What is the average price of items that Northwind sells? 
SELECT AVG(UnitPrice) AS 'Average Price'
FROM products;
#2 continued) Average price= $28.87

#3) What is the price of the most expensive item that Northwind sells? 
SELECT MAX(UnitPrice) AS 'Most Expensive Item'
FROM products;
#3) Most Expensive item= $263.50

#4) What is the sum of all the employee's salaries? 
SELECT SUM(salary) as 'SUM of Employee Salaries'
FROM employees;
#4 continued) Sum of employees salaries= $20362.93

#5) Which employee makes the highest salary, and which employee makes the lowest? 
SELECT FirstName AS 'First Name', LastName AS 'Last Name', Salary
FROM employees
WHERE salary= (SELECT MAX(Salary) FROM Employees)
OR Salary= (SELECT MIN(Salary) FROM Employees);
#5 continued) Janet Leverling makes the max salary and Steven Buchanan makes the min salary.

/*6) What is the supplier ID of each supplier and the number of items they supply? (You can 
answer this query by only looking at the products table.) */
SELECT SupplierID, COUNT(UnitsInStock)
FROM Products
GROUP BY SupplierID;

/*7)What is the category ID of each category and the average price of each item in the 
category? (You can answer this query by only looking at the products table.) */
SELECT CategoryID, AVG(UnitPrice) AS 'Average Price'
FROM products
GROUP BY CategoryID;

/*8)For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each 
supplier and the number of items they supply? (Again, you can answer this query by 
only looking at the products table.) */
SELECT SupplierID, COUNT(*) AS 'SuppliedItems' 
FROM products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

/*9)List the product id, product name, and inventory value (calculated by multiplying unit 
price by the number of units on hand). Sort the results in descending order by value. If 
two or more have the same value, order by product name. */
SELECT ProductID, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM products
ORDER BY InventoryValue DESC, ProductName;