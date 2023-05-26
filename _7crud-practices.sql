-- Check which database is being used.
SELECT database();

-- To display databases
SHOW databases;

-- Use databases;
USE [database_name];

-- 1
CREATE DATABASE shirts_db;

USE shirts_db;

-- 2
CREATE TABLE shirts(
shirt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
article VARCHAR(100),
color VARCHAR(100),
shirt_size VARCHAR(100),
last_worn INT
);

-- 3
INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES('t-shirt', 'white', 'S', 10),
('t-shirt', 'white', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- 4
INSERT INTO shirts(color, article, shirt_size, last_worn)
VALUES('purple', 'polo shirt', 'M', 50);

-- 5
SELECT article, color
FROM shirts;

-- 6
SELECT article, color, shirt_size, last_worn
FROM shirts
WHERE shirt_size = 'M';

-- 7
SELECT article, shirt_size
FROM shirts
WHERE article = 'polo shirt';

UPDATE shirts SET shirt_size = 'L'
WHERE article = 'polo shirt';

SELECT article, shirt_size
FROM shirts
WHERE article = 'polo shirt';

-- 8
SELECT article, last_worn
FROM shirts
WHERE last_worn = 15;

UPDATE shirts SET last_worn = 0
WHERE last_worn = 15;

SELECT article, last_worn
FROM shirts
WHERE last_worn = 15;

-- 9
SELECT article, color, shirt_size
FROM shirts
WHERE color = 'white';

-- My solution
UPDATE shirts SET shirt_size = 'XS'
WHERE color = 'white';

UPDATE shirts SET color = 'off white'
WHERE color = 'white';

-- Course solution
UPDATE shirts SET color = 'off white', shirt_size = 'XS'
WHERE color = 'white';

SELECT *
FROM shirts
WHERE color = 'off white';

-- 10
SELECT *
FROM shirts
WHERE last_worn = 200;

DELETE FROM shirts
WHERE last_worn = 200;

-- 11
SELECT *
FROM shirts
WHERE article = 'tank top';

DELETE FROM shirts
WHERE article = 'tank top';

-- 12
DELETE FROM shirts;

-- 13
DROP TABLE shirts;

-- To display all tables in a database.
SHOW TABLES;

