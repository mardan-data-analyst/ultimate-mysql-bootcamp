SELECT *
FROM orders1;

-- Two-step process
SELECT id
FROM customers1
WHERE last_name='George';

SELECT *
FROM orders1
WHERE customer_id = 1;

-- Subquery
SELECT *
FROM orders1
WHERE customer_id = (SELECT id FROM customers1 WHERE last_name = 'George');

-- JOINS
-- CROSS JOIN
SELECT *
FROM customers1, orders1;

-- IMPLICIT INNER JOIN
SELECT *
FROM customers1
JOIN orders1
WHERE customers1.id = orders1.customer_id;

SELECT *
FROM orders1
JOIN customers1
WHERE orders1.customer_id = customers1.id;

SELECT *
FROM customers1, orders1
WHERE customers1.id = orders1.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers1, orders1
WHERE customers1.id = orders1.customer_id;

-- EXPLICIT JOIN
SELECT *
FROM customers1
INNER JOIN orders1
ON customers1.id = orders1.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers1
INNER JOIN orders1
ON customers1.id = orders1.customer_id;


-- ARBITRARY JOIN - don't do this!
SELECT *
FROM orders1
JOIN customers1
ON customers1.id = orders1.id;


-- JOINS + GROUP BY AND ORDER BY

SELECT first_name, last_name, order_date, amount
FROM customers1
JOIN orders1
ON customers1.id = orders1.customer_id;

SELECT ANY_VALUE(first_name) AS name, ANY_VALUE(last_name) surname, SUM(amount) AS total_purchase
FROM customers1
JOIN orders1
ON customers1.id = orders1.customer_id
GROUP BY customers1.first_name, customers1.last_name
ORDER BY total_purchase;

SELECT ANY_VALUE(first_name), ANY_VALUE(last_name), SUM(amount) AS total_spent
FROM orders1
JOIN customers1
ON customers1.id = orders1.customer_id
GROUP BY orders1.customer_id
ORDER BY total_spent DESC;

-- ORDER BY DOES NOT WORK WITH QUOTED ALIASES

SELECT first_name, last_name, order_date, amount
FROM orders1
JOIN customers1
ON customers.id = orders.customer_id
ORDER BY amount;

SELECT first_name, last_name, order_date, amount
FROM orders1
JOIN customers1
ON customers1.id = orders1.customer_id
ORDER BY order_date;


-- LEFT JOIN
SELECT first_name, last_name, order_date, amount
FROM customers1
LEFT JOIN orders1
ON customers1.id = orders1.customer_id;

SELECT order_date, amount, first_name, last_name
FROM orders1
LEFT JOIN customers1
ON customers1.id = orders1.customer_id;

-- LEFT JOIN + GROUP BY
SELECT first_name, last_name, amount
FROM customers1
LEFT JOIN orders1
ON customers1.id = orders1.customer_id;

SELECT ANY_VALUE(first_name), ANY_VALUE(last_name), IFNULL(SUM(amount), 0) AS total_spent
FROM customers1
LEFT JOIN orders1
ON customers1.id = orders1.customer_id
GROUP BY customers1.id
ORDER BY total_spent;

-- RIGHT JOIN
SELECT *
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id;


SELECT ANY_VALUE(first_name), ANY_VALUE(last_name), IFNULL(SUM(amount), 0) AS total_spent
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

-- ON DELETE CASCADE
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

DESC customers2;
DESC orders2;

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
WHERE last_name = 'George';

DELETE FROM customers2
WHERE last_name = 'Michael';

SELECT *
FROM customers2;

SELECT *
FROM orders2;



