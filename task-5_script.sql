-- Switch to the desired database
USE employee;

-- Drop tables if they already exist (for reset purposes)
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    CustomerName TEXT NOT NULL,
    Country TEXT
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    OrderDate TEXT,
    Amount REAL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert sample data into Customers
INSERT INTO Customers VALUES (1, 'Alex Turner', 'UK');
INSERT INTO Customers VALUES (2, 'Gracie Abrams', 'USA');
INSERT INTO Customers VALUES (3, 'Justin Bieber', 'Canada');

-- Insert sample data into Orders
INSERT INTO Orders VALUES (101, 1, '2024-01-10', 250.00);
INSERT INTO Orders VALUES (102, 2, '2024-02-15', 150.00);
INSERT INTO Orders VALUES (103, 1, '2024-03-20', 300.00);
INSERT INTO Orders VALUES (104, 4, '2024-04-01', 500.00); -- Invalid CustomerID to test joins
