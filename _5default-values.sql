CREATE TABLE cats3
(name VARCHAR(100) DEFAULT 'unnamed',
age INT DEFAULT 99);

DESC cats3;

INSERT INTO cats3(age)
VALUES(13);

SELECT *
FROM cats3;

INSERT INTO cats3()
VALUES();

-- NOT NULL + DEFAULT VALUE
CREATE TABLE cats4
(name VARCHAR(100) NOT NULL DEFAULT 'unnamed',
age INT NOT NULL DEFAULT 99);

-- We can still manually set things NULL if we don't specify NOT NULL.
INSERT INTO cats3(name, age)
VALUES(NULL, 10);

-- PRIMARY KEY
INSERT INTO cats(name, age)
VALUES('Helena', 11);

SELECT *
FROM cats;

CREATE TABLE unique_cats(
cat_id INT NOT NULL,
name VARCHAR(50),
age INT,
PRIMARY KEY(cat_id));

DESC unique_cats;

INSERT INTO unique_cats(cat_id, name, age)
VALUES(1, 'Fred', 2);

SELECT *
FROM unique_cats;

INSERT INTO unique_cats(cat_id, name, age)
VALUES(2, 'Louise', 4);

SELECT *
FROM unique_cats;

-- AUTO INCREMENT PRIMARY KEY
CREATE TABLE unique_cats2(
cat_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50),
age INT,
PRIMARY KEY(cat_id));

INSERT INTO unique_cats2(name, age)
VALUES('Skippy', 14);

SELECT *
FROM unique_cats2;

INSERT INTO unique_cats2(name, age)
VALUES('Jiff', 15);

SELECT *
FROM unique_cats2;

-- PRACTICE

-- 1
CREATE TABLE employees(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
middle_name VARCHAR(255),
age INT NOT NULL,
current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
PRIMARY KEY(id));

-- 2
CREATE TABLE employees2(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
middle_name VARCHAR(255),
age INT NOT NULL,
current_status VARCHAR(255) NOT NULL DEFAULT 'employed');

-- 3
INSERT INTO employees(
first_name,
last_name,
middle_name,
age,
current_status)
VALUES('John',
'Smith',
'Alex',
30,
'employed');

-- 4
INSERT INTO employees(
first_name,
last_name,
age)
VALUES('John',
'Smith',
30);

