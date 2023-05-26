-- CREATE database and tables
CREATE DATABASE customers_and_orders;

USE customers_and_orders;


CREATE TABLE customers1
(
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(100)
);

CREATE TABLE orders1
(
id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE,
amount DECIMAL(8, 2),
customer_id INT,
FOREIGN KEY(customer_id) REFERENCES customers1(id)
);

INSERT INTO customers1 (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders1 (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
-- Error
INSERT INTO orders1 (order_date, amount, customer_id)
VALUES('200/04/11', 450, 3);

-- Not error
INSERT INTO orders1 (order_date, amount, customer_id)
VALUES('200/04/11', 450, 3);

SELECT *
FROM customers1;

SELECT *
FROM orders1;

CREATE TABLE customers2
(
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(100)
);

CREATE TABLE orders2
(
id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE,
amount DECIMAL(8, 2),
customer_id INT,
FOREIGN KEY(customer_id) REFERENCES customers2(id)
ON DELETE CASCADE
);

INSERT INTO customers2 (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders2 (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
SELECT *
FROM customers2;

SELECT *
FROM orders2;

DELETE FROM customers2
WHERE email='george@gmail.com';



