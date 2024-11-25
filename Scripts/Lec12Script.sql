
-- SQL: Select the database you want to usecustomerscustomers
USE Lec12_13;

-- SQL: Table Creation
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- SQL: Data Insertion
INSERT INTO Customers VALUES 
(1, 'John', 'Doe', 'john.doe@email.com'),
(2, 'Jane', 'Smith', 'jane.smith@email.com'),
(3, 'Alice', 'Brown', 'alice.brown@email.com'),
(4, 'Bob', 'Johnson', 'bob.johnson@email.com'),
(5, 'Chris', 'Davis', 'chris.davis@email.com'),
(6, 'Diana', 'Evans', 'diana.evans@email.com'),
(7, 'Eve', 'Miller', 'eve.miller@email.com'),
(8, 'Frank', 'Wilson', 'frank.wilson@email.com'),
(9, 'Grace', 'Moore', 'grace.moore@email.com'),
(10, 'Henry', 'Taylor', 'henry.taylor@email.com'),
(11, 'Ivy', 'Anderson', 'ivy.anderson@email.com'),
(12, 'Jack', 'Thomas', 'jack.thomas@email.com'),
(13, 'Karen', 'Martin', 'karen.martin@email.com'),
(14, 'Leo', 'White', 'leo.white@email.com'),
(15, 'Mia', 'Harris', 'mia.harris@email.com');


INSERT INTO Products VALUES 
(1, 'Laptop', 999.99),
(2, 'Smartphone', 499.99),
(3, 'Tablet', 299.99),
(4, 'Monitor', 199.99),
(5, 'Keyboard', 49.99),
(6, 'Mouse', 29.99),
(7, 'Printer', 129.99),
(8, 'Headphones', 79.99),
(9, 'Smartwatch', 199.99),
(10, 'Camera', 699.99),
(11, 'External Hard Drive', 89.99),
(12, 'Gaming Console', 399.99),
(13, 'Router', 59.99),
(14, 'Microphone', 99.99),
(15, 'Speakers', 149.99);


INSERT INTO Orders VALUES 
(101, 1, 1, 2, '2023-11-29'),
(102, 2, 2, 1, '2023-11-30'),
(103, 3, 3, 1, '2023-12-01'),
(104, 4, 4, 2, '2023-12-02'),
(105, 5, 5, 3, '2023-12-03'),
(106, 6, 6, 1, '2023-12-04'),
(107, 7, 7, 2, '2023-12-05'),
(108, 8, 8, 3, '2023-12-06'),
(109, 9, 9, 1, '2023-12-07'),
(110, 10, 10, 1, '2023-12-08'),
(111, 11, 11, 2, '2023-12-09'),
(112, 12, 12, 3, '2023-12-10'),
(113, 13, 13, 1, '2023-12-11'),
(114, 14, 14, 2, '2023-12-12'),
(115, 15, 15, 1, '2023-12-13');

