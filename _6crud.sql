-- CRUD
-- CREATE
CREATE TABLE cats(
cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
breed VARCHAR(100),
age INT);

INSERT INTO cats(name, breed, age)
VALUES('Ringo', 'Tabby', 4),
('Cindy', 'Maine Coon', 10),
('Dumbledore', 'Maine Coon', 11),
('Egg', 'Persian', 4),
('Misty', 'Tabby', 13),
('George Michael', 'Ragdoll', 9),
('Jackson', 'Sphynx', 7);

-- READ
SELECT *
FROM cats;

SELECT name
FROM cats;

SELECT age
FROM cats;

SELECT cat_id
FROM cats;

SELECT name, age
FROM cats;

SELECT cat_id, name, age
FROM cats;

SELECT name, breed, age, cat_id
FROM cats;

-- WHERE clause
SELECT *
FROM cats
WHERE age = 4;

SELECT *
FROM cats
WHERE name = 'Egg';

-- case insensitive
SELECT *
FROM cats
WHERE name = 'EGG';


-- PRACTICE

--1
SELECT cat_id
FROM cats;

-- 2
SELECT name, breed
FROM cats;

-- 3
SELECT name, age
FROM cats
WHERE breed = 'Tabby';

-- 4
SELECT cat_id, age
FROM cats
WHERE cat_id = age;

-- Aliases
SELECT cat_id AS id, name
FROM cats;

SELECT name AS 'cat name', breed AS 'kitty breed'
FROM cats;

DESC cats;


-- UPDATE
UPDATE cats SET breed = 'Shorthair'
WHERE breed = 'Tabby';

-- Multiple updates

UPDATE cats SET breed='Shorthair, age=14 WHERE breed='Tabby';

SELECT *
FROM cats;

UPDATE cats SET age = 14
WHERE name = 'Misty';

SELECT *
FROM cats
WHERE name = 'Misty';

-- This command without WHERE command will set age to 14 in every place.
UPDATE cats SET age = 14;


-- PRACTICE

-- 1
SELECT *
FROM cats
WHERE name = 'Jackson';

UPDATE cats SET name = 'Jack'
WHERE name = 'Jackson';

-- 2
SELECT *
FROM cats
WHERE name = 'Ringo';

UPDATE cats SET breed = 'British Shorthair'
WHERE name = 'Ringo';

-- 3
SELECT *
FROM cats
WHERE breed = 'Maine Coon';

UPDATE cats SET age = 12
WHERE breed = 'Maine Coon';


-- DELETE
SELECT *
FROM cats
WHERE name = 'Egg';

DELETE FROM cats
WHERE name = 'Egg';

-- This command will delete everything (not table itself).
DELETE FROM cats;

-- PRACTICE

-- 1
SELECT *
FROM cats
WHERE age = 4;

DELETE FROM cats
WHERE age = 4;

-- 2
SELECT *
FROM cats
WHERE cat_id = age;

DELETE FROM cats
WHERE cat_id = age;

-- 3
SELECT *
FROM cats;

DELETE FROM cats;

