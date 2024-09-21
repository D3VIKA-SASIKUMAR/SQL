create database Customer_Orders_Management_System;
use Customer_Orders_Management_System;
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(10)
);
show tables;
describe customer;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL,
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES Customer (customer_id)
);
describe orders;
insert into customer values (1,'DEVIKA','devika.sujeetha@gmail.com',8281535237),
							(2,'NIHARIKA','niharika@gmail.com',5432787654),
                            (3,'NYTHIKA','pinku@gmail.com',7548932145);
insert into orders values(101,'2008-11-11',20000,1),
                          (124,'2010-12-10',50050,2),
                          (564,'2024-10-8',120000,3),
                          (784,'2023-12-4',2000,2),
                          (865,'2002-10-25',50000,1);
SELECT*FROM orders;
SELECT * FROM customer;
SELECT customer.customer_name, Orders.amount
FROM customer
JOIN orders ON customer.customer_name = orders.amount;
    
UPDATE customer 
SET customer_name = 'ALICE'
WHERE customer_id = 1;

describe customer;
select*from customer;

UPDATE Orders 
SET amount = amount * 1.10
WHERE customer_id = 1;

