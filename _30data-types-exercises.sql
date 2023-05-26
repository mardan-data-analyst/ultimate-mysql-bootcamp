-- 1
-- What's a good use case for CHAR?
-- A FIXED length string (can contain letters, numbers, and special characters).
-- The size parameter specifies the column length in characters - can be from 0 to 255. Default is 1

CREATE TABLE test_char(sex CHAR(2), state CHAR(2));

INSERT INTO test_char(sex, state)
VALUES('F', 'NY');

-- 2
-- My solution
CREATE TABLE inventory(
item_name VARCHAR(100),
price DOUBLE,
quantity INT
);

-- Course solution
CREATE TABLE inventory2(
item_name VARCHAR(100),
price DECIMAL(8,2),
quantity INT
);

-- 3
-- What's the difference between DATETIME and TIMESTAMP?
-- DATETIME -- past '1000-01-01 00:00:00' -- future 9999-12-31 23:59:59'
-- TIMESTAMP -- past '1970-01-01 00:00:01' -- future '2038-01-19 03:14:07'
-- TIMESTAMP is more memory efficient.

--4
-- My solution
SELECT NOW() AS 'NOW() function', CURRENT_TIME() AS 'CURRENT_TIME function';

-- Course solution
SELECT CURTIME();

-- 5
SELECT CURDATE();

-- 6
-- My solution
SELECT WEEKDAY(NOW());

--Course solution
SELECT DAYNAME(CURDATE());

-- Not correct results
SELECT DAYNAME(NOW());

SELECT DAYOFWEEK(CURDATE());

SELECT DAYOFWEEK(NOW());

-- different result
SELECT DATE_FORMAT(NOW(), '%w');

-- 7
-- My solution
SELECT DAYNAME(CURDATE());

-- Course solution
SELECT DATE_FORMAT(NOW(), '%W');

-- 8
-- Method 1
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

-- Method 2
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

--9
-- Method 1
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%m');

-- Method 2
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

-- 10
CREATE TABLE tweets(
content VARCHAR(100),
user_name VARCHAR(100),
created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets(content, user_name)
VALUES('My first tweet', 'user_1');

INSERT INTO tweets(content, user_name)
VALUES('My second tweet', 'user_1');


