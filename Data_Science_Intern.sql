-- Question 1. How many orders were shipped by Speedy Express in total?  --
-- Answer: 54 --
-- Query: --
-- We need to find the number of orders shipped by speedy express --
-- Procedure: --
-- We join the table Orders and Shippers on the basis of Shipper ID. --
-- We count the number of Rows which has Shipper Name as "Speedy Express" -- 
SELECT COUNT(*) AS NumberOfOrdersBySpeedyExpress
FROM [Orders]
JOIN [Shippers]
    ON [Shippers].ShipperID = [Orders].ShipperID
WHERE [Shippers].ShipperName = 'Speedy Express';

-- Question 2. What is the last name of the employee with the most orders? --
-- Answer: Peacock --
-- Query: --
-- We have to find the last name of employee with maximum orders --
-- Procedure: --
-- We join the Orders Table and Employees Table on the basis of Employee Id. --
-- We then group by Employees Last Name.--
-- We then Count the number of Rows for each of the Groups and then we sort them in Descending Order. --
-- Limiting by 1, we get the Employee Details having most number of Orders. We then fetch the Last Name. --
SELECT [Employees].LastName
FROM [Orders]
JOIN [Employees]
ON [Orders].EmployeeID = [Employees].EmployeeID
GROUP BY [Employees].LastName
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Question 3. What product was ordered the most by customers in Germany? --
-- Answer: Boston Crab Meat --
-- Query: --
-- We have to find the name of Product ordered the most by Customers in Germany --
-- Procedure: --
-- Join Orders table with Customer Table on the basis of Customer Id where Country is Germany. --
-- We then join with Order Details Table on the basis of Order Id --
-- We then Group the Result on the basis of Product Id and then we calculate Sum of Quantity of Each Product Group. --
-- We then join the Table Products on the basis of Product Id and then sort the Result in Descending order of Sum of Quantity. --
-- By Limiting the Result to 1, we display the corresponding product name from Products Table. --
SELECT [Products].ProductName
FROM [Orders]
JOIN [Customers]
    ON [Customers].CustomerID = [Orders].CustomerID
JOIN [OrderDetails]
    ON [OrderDetails].OrderID = [Orders].OrderID
JOIN [Products]
    ON [Products].ProductID = [OrderDetails].ProductID
WHERE [Customers].Country = 'Germany'
GROUP BY [OrderDetails].ProductID
ORDER BY SUM([OrderDetails].Quantity) DESC
LIMIT 1;
