--- Question 1 1NF ---
SELECT OrderID,CustomerName,'Laptop'
AS product
FROM ProductDetail
WHERE Products LIKE '%Laptop%'
UNION ALL
SELECT OrderID,CustomerName,'Mouse'
FROM ProductDetail
WHERE Products LIKE '%Mouse%'
UNION ALL
SELECT OrderID,CustomerName,'Tablet'
FROM ProductDetail
WHERE Products LIKE '%Tablet%'
UNION ALL
SELECT OrderID,CustomerName,'Keyboard'
FROM ProductDetail
WHERE Products LIKE '%Keyboard%'
UNION ALL
SELECT OrderID,CustomerName,'Phone'
FROM ProductDetail
WHERE Products LIKE '%Phone%';

--- Question 2 2NF ---
INSERT INTO OrderDetails (OrderID, CustomerName, Product, Quantity)
VALUES 
    (101, 'John Doe', 'Laptop', 2),
    (101, 'John Doe', 'Mouse', 1),
    (102, 'Jane Smith', 'Tablet', 3),
    (102, 'Jane Smith', 'Keyboard', 1),
    (102, 'Jane Smith', 'Mouse', 2),
    (103, 'Emily Clark', 'Phone', 1);

--- Products table
    CREATE  TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID));

--- data in table Ordes
INSERT INTO Orders (OrderID, CustomerName)
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

--- data in table OrderProducts
INSERT INTO Order_Products (OrderID, Product, Quantity)
SELECT OrderID, Product, Quantity
FROM OrderDetails;