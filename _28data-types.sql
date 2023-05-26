-- TEXT
CREATE TABLE dogs(name CHAR(5), breed VARCHAR(10));

INSERT INTO dogs(name, breed)
VALUES('bob', 'beagle');

INSERT INTO dogs(name, breed)
VALUES('robby', 'corgie');

INSERT INTO dogs(name, breed)
VALUES('Princ', 'Retriever&Retriever&Retriever&Retriever');

SELECT *
FROM dogs;


-- DECIMAL
CREATE TABLE items(price DECIMAL(5, 2));

INSERT INTO items(price)
VALUES(7);

INSERT INTO items(price)
VALUES(77777777);

INSERT INTO items(price)
VALUES(77.77);

INSERT INTO items(price)
VALUES(777.7777);

INSERT INTO items(price)
VALUES(7.7777);


-- FLOAT and DOUBLE
CREATE TABLE thingies(price FLOAT);

INSERT INTO thingies(price)
VALUES(88.45);

SELECT *
FROM thingies;

INSERT INTO thingies(price)
VALUES(8877.45);

INSERT INTO thingies(price)
VALUES(8877665544.45);


-- Dates & times | Datetime
CREATE TABLE people
(
	name VARCHAR(100),
	birthdate DATE,
	birthtime TIME,
	birthdt DATETIME
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Toaster', CURDATE(), CURTIME(), NOW());

SELECT CURDATE();

SELECT CURTIME();

SELECT NOW();

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Fauster', CURDATE(), CURTIME(), NOW());

DELETE FROM people
WHERE name = 'Fauster';

-- FORMATING DATES
SELECT name, birthdate, DAY(birthdate) AS day
FROM people;

SELECT name, birthdate, DAYNAME(birthdate) AS day_name
FROM people;

SELECT name, birthdate, DAYOFYEAR(birthdate) AS 'year day count'
FROM people;

-- Getting odd value because of missing date
SELECT name, birthtime, DAYOFYEAR(birthtime) AS 'year day count'
FROM people;


SELECT name, birthdt, DAYOFYEAR(birthdt) AS 'year day count'
FROM people;

SELECT name, birthdt, MONTH(birthdt) AS 'month'
FROM people;

SELECT name, birthtime, HOUR(birthtime) AS 'month'
FROM people;

SELECT name, birthtime, MINUTE(birthtime) AS 'month'
FROM people;

-- Formating via CONCAT
SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate))
FROM people;

-- Formating via DATE_FORMAT
SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y');

-- Formating via DATE_FORMAT
SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W-%M-%Y');

SELECT name, DATE_FORMAT(birthdt, '%W %M %Y')
FROM people;

SELECT name, DATE_FORMAT(birthdt, 'was born on a %W')
FROM people;

SELECT name, DATE_FORMAT(birthdt, ' %m/%d/%y')
FROM people;

SELECT name, DATE_FORMAT(birthdt, ' %m/%d/%Y')
FROM people;

SELECT name, DATE_FORMAT(birthdt, ' %m/%d/%Y at %h:%m')
FROM people;


-- DATE MATH
-- DATEDIFF
SELECT *
FROM people;

SELECT name, birthdate, DATEDIFF(NOW(), birthdate)
FROM people;

-- DATE_ADD
SELECT birthdt
FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) AS '1 month later'
FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) AS '10 seconds later'
FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) AS '3 quarter later'
FROM people;

SELECT birthdt, birthdt + INTERVAL 1 MONTH AS '1 month later'
FROM people;

SELECT birthdt, birthdt - INTERVAL 5 MONTH AS '5 month before'
FROM people;

SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR AS '15 months 10 hour later'
FROM people;

-- DATE_SUB
SELECT birthdt
FROM people;

SELECT birthdt, DATE_SUB(birthdt, INTERVAL 1 MONTH) AS '1 month before'
FROM people;

SELECT birthdt, DATE_SUB(birthdt, INTERVAL 10 SECOND) AS '10 seconds before'
FROM people;

SELECT birthdt, DATE_SUB(birthdt, INTERVAL 3 QUARTER) AS '3 quarter before'
FROM people;






