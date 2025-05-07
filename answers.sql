---WEEK 7 RETAKE

--- Question 1 1NF ---
USE paymentdb;

CREATE TABLE productDetail(
orderId INT,
CustomerName VARCHAR(100),
products VARCHAR(100)
);

--- Insert Data
INSERT INTO productDetail(orderId,customerName,products)
VALUES (101,'John Doe','laptop'),
        (101,'John Doe','mouse'),
        (102,'Jane Smith','Tablet'),
        (102,'Jane Smith','keyboard'),
        (103,'Emily Clark','phone');
        
        SELECT * FROM productdetail;

    --- Question 2 2NF ---
        CREATE TABLE orders(
         orderId INT PRIMARY KEY,
        CustomerName VARCHAR(100)
        );

        INSERT INTO orders(orderId,CustomerName)
         VALUES(101,'John Doe'),
			   (102,'Jane Smith'),
               (103,'Emily Clark');

    CREATE TABLE product(
     productId INT PRIMARY KEY,
     productName VARCHAR(100),
     quantity INT,
     orderId INT,
    FOREIGN KEY (orderId)REFERENCES orders(orderId)
  );

INSERT INTO product(productId,productName,quantity,orderId)
            VALUES (1, 'laptop',2,101),
				    (2, 'mouse',1,101),
                    (3, 'Tablet',3,102),
                    (4, 'keyboard',2,102),
                    (5, 'mouse',1,102),
                    (6, 'phone',1,103);
                    






