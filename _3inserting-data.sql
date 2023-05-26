CREATE TABLE cats(name VARCHAR(50), age INT);

-- INSERT INTO command
INSERT INTO cats(name, age)
VALUES('Blue', 1);

-- SWITCHING THE ORDER
INSERT INTO cats(age, name)
VALUES(3, 'Yellow');

SELECT *
FROM cats;

-- INSERTING MULTIPLE VALUES
INSERT INTO cats(name, age)
VALUES('Black', 4),
('Pink', 5),
('Purple', 6);


-- PRACTICE

-- 1
CREATE TABLE people(first_name VARCHAR(20), last_name VARCHAR(20), age INT);
DESC people;

-- 2
INSERT INTO people(first_name, last_name, age)
VALUES('AAAA', 'BBBB', 10);

SELECT *
FROM people;

-- 3
INSERT INTO people(age, last_name, first_name)
VALUES (20, 'Anderson', 'Lewis');

SELECT *
FROM people;

-- 4
INSERT INTO people(first_name, last_name, age)
VALUES('CCCC', 'DDDD', 12),
('EEEE', 'FFFF', 13),
('GGGG', 'HHHH', 14);

SELECT *
FROM people;

-- 5
DROP TABLE people;


-- SHOW WARNINGS command
SHOW WARNINGS;

-- SHOW WARNINGS command returns warnings right after the query causing warnings. 
--If there is another query in between it will return empty set. 

INSERT INTO cats(name, age)
VALUES('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 45);

INSERT INTO cats(name, age)
VALUES('Lima', 'ten');
