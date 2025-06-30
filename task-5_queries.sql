
-- INNER JOIN: Shows only matching records
SELECT 
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Amount
FROM 
    Customers
INNER JOIN 
    Orders 
ON 
    Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN: All customers, with or without orders
SELECT 
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Amount
FROM 
    Customers
LEFT JOIN 
    Orders 
ON 
    Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN: All orders, with or without customer info (only supported in MySQL)
SELECT 
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Amount
FROM 
    Orders
RIGHT JOIN 
    Customers 
ON 
    Customers.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN: All data, even if no matches
SELECT 
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Amount
FROM 
    Customers
LEFT JOIN 
    Orders 
ON 
    Customers.CustomerID = Orders.CustomerID

UNION

SELECT 
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Amount
FROM 
    Orders
LEFT JOIN 
    Customers 
ON 
    Customers.CustomerID = Orders.CustomerID;
