INSERT INTO cats(name)
VALUES('Alabama');

SELECT *
FROM cats;

-- NULL --> YES means a colunm can contain NULL values.

INSERT INTO cats()
VALUES();

-- NOT TO ALLOW NULL VALUES
CREATE TABLE cats2(name VARCHAR(100) NOT NULL,
age INT NOT NULL);

DESC cats;

-- NULL --> NO
INSERT INTO cats2(name)
VALUES('Alabama');

SHOW WARNINGS;

INSERT INTO cats2(age)
VALUES(15);

SHOW WARNINGS;

SELECT *
FROM cats2;

-- USING QUOTES
CREATE DATABASE quotes;

USE quotes;

CREATE TABLE shops(name VARCHAR(100));

INSERT INTO shops(name)
VALUES('shoe emporium');


-- Error
INSERT INTO shops(name)
VALUES('mario's pizza');

INSERT INTO shops(name)
VALUES('mario\'s pizza');

SELECT *
FROM shops;

INSERT INTO shops(name)
VALUES('she said "haha"');

INSERT INTO shops(name)
VALUES('she said "haha"');

