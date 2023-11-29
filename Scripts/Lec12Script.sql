
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
INSERT INTO Customers VALUES (1, 'John', 'Doe', 'john.doe@email.com');
INSERT INTO Customers VALUES (2, 'Jane', 'Smith', 'jane.smith@email.com');

INSERT INTO Products VALUES (1, 'Laptop', 999.99);
INSERT INTO Products VALUES (2, 'Smartphone', 499.99);

INSERT INTO Orders VALUES (101, 1, 1, 2, '2023-11-29');
INSERT INTO Orders VALUES (102, 2, 2, 1, '2023-11-30');
