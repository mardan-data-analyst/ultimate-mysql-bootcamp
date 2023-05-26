-- NOT EQUAL !=
SELECT title, released_year
FROM books
WHERE released_year = 2017;

SELECT title, released_year
FROM books
WHERE released_year != 2017;

SELECT title, author_lname
FROM books;

SELECT title, author_lname
FROM books
WHERE author_lname = 'Harris';

SELECT title, author_lname
FROM books
WHERE author_lname != 'Harris';


-- NOT LIKE
SELECT title
FROM books
WHERE title LIKE 'W%';

SELECT title
FROM books
WHERE title LIKE '%W%';

SELECT title
FROM books
WHERE title NOT LIKE 'W%';


-- GREATER THAN >
SELECT *
FROM books
WHERE released_year > 2000;

SELECT title, released_year
FROM books
ORDER BY released_year;

SELECT title, released_year
FROM books
WHERE released_year > 2000
ORDER BY released_year;

-- TRUE = 1
SELECT 99 > 1;

-- FALSE = 0
SELECT 99 > 100;

-- NULL
SELECT 1  > NULL;

-- GREATER THAN OR EQUAL TO >=
SELECT title, released_year
FROM books
WHERE released_year >= 2000
ORDER BY released_year;

SELECT title, stock_quantity
FROM books
WHERE released_year >= 2000
ORDER BY released_year;

SELECT title, stock_quantity
FROM books;

SELECT title, stock_quantity
FROM books
WHERE stock_quantity >= 100
ORDER BY stock_quantity;


-- TRUE FALSE
SELECT 99 > 1;

SELECT 99 > 567;


--Exercise
SELECT 100 > 5;

SELECT - 15 > 15;

SELECT 9 > -10;

SELECT 1 > 1;

SELECT 'a' > 'b';

SELECT 'A' > 'a';

SELECT 'A' = 'a';

SELECT 'b' > 'a';

-- This query
SELECT title, author_fname, author_lname
FROM books
WHERE author_lname = 'Eggers';

-- == this query

SELECT title, author_fname, author_lname
FROM books
WHERE author_lname = 'eggers';


-- LESS THAN <
SELECT title, released_year
FROM books
ORDER BY released_year;

SELECT title, released_year
FROM books
WHERE released_year < 2000
ORDER BY released_year;


-- LESS THAN OR EQUAL TO <=
SELECT title, released_year
FROM books
WHERE released_year <= 2000
ORDER BY released_year;

-- Exercise
SELECT 3 < -10 AS 'FALSE';

SELECT -10 < -9 AS 'TRUE';

SELECT 42 <= 42 AS 'TRUE';

SELECT 'h' < 'p' AS 'TRUE';

SELECT 'Q' <= 'q' AS 'TRUE';

SELECT 'Q' = 'q' AS 'TRUE';


-- LOGICAL && AND
SELECT title, author_lname, released_year
FROM books
WHERE author_lname = 'Eggers'   AND released_year > 2010;

SELECT title, author_lname, released_year
FROM books
WHERE author_lname = 'Eggers'   AND released_year > 2010 AND title LIKE '%novel%';

SELECT title, author_lname, released_year
FROM books
WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT title, pages
FROM books
WHERE CHAR_LENGTH(title) > 30 AND pages > 500;
 
SELECT 1 < 5 && 7 = 9 AS 'FALSE';

-- Exercise
SELECT -10 > - 20 AND 0 <= 0 AS 'TRUE';

SELECT -40 <= 0 AND 10 > 40 AS 'FALSE';

SELECT 54 <= 54 AND 'a' = 'A' AS 'TRUE';

SELECT *
FROM books
WHERE author_lname = 'Eggers' AND
released_year > 2010
AND title LIKE '%novel%';

-- LOGICAL || OR
SELECT title, author_lname, released_year
FROM books
WHERE author_lname = 'Eggers' OR released_year > 2010;

-- Exercise
SELECT 40 <= 100 OR -2 > 0 AS 'TRUE';

SELECT 10 > 5 OR 5 = 5 AS 'TRUE';

SELECT 'a' = 5 OR 3000 > 2000 AS TRUE;

SELECT *
FROM books
WHERE author_lname = 'Eggers' OR
released_year > 2010
OR stock_quantity > 100;


-- BETWEEN
SELECT title, released_year
FROM books
WHERE released_year >= 2004 AND released_year <= 2015
ORDER BY released_year;

SELECT title, released_year
FROM books
WHERE released_year BETWEEN 2004 AND 2015
ORDER BY released_year;


-- NOT BETWEEN
SELECT title, released_year
FROM books
WHERE released_year NOT BETWEEN 2004 AND 2015
ORDER BY released_year;


-- CAST function
SELECT CAST('2017-05-02' AS DATETIME);

SELECT *
FROM people;

SELECT name, birthdt
FROM people
WHERE birthdt BETWEEN CAST('1980-01-01' AS DATETIME) AND 
CAST('2000-01-01' AS DATETIME);


-- IN operator
SELECT title, author_lname
FROM books
WHERE author_lname = 'Carver' OR
author_lname = 'Lahiri' OR
author_lname = 'Smith';

SELECT title, author_lname
FROM books
WHERE author_lname IN('Carver', 'Lahiri', 'Smith');

SELECT title, released_year
FROM books
WHERE released_year IN(2017, 1985);


-- NOT IN
SELECT title, author_lname
FROM books
WHERE author_lname NOT IN('Carver', 'Lahiri', 'Smith');

SELECT title, released_year
FROM books
WHERE released_year != 2000 AND
released_year != 2002 AND
released_year != 2004 AND
released_year != 2006 AND
released_year != 2008 AND
released_year != 2010 AND
released_year != 2012 AND
released_year != 2014 AND
released_year != 2016
ORDER BY released_year;

SELECT title, released_year
FROM books
WHERE released_year NOT IN(2002, 2004, 2006, 2008, 2009, 2010, 2012, 2014, 2016)
ORDER BY released_year;

SELECT title, released_year
FROM books
WHERE released_year >= 2000
AND released_year NOT IN(2002, 2004, 2006, 2008, 2009, 2010, 2012, 2014, 2016)
ORDER BY released_year;

SELECT title, released_year
FROM books
WHERE released_year >= 2000
AND released_year % 2 != 0
ORDER BY released_year;


-- CASE STATEMENTS
SELECT title, released_year,
 CASE
  WHEN released_year >= 2000 THEN 'Modern Lit'
  ELSE '20th Century Lit'
 END
FROM books
ORDER BY released_year;

SELECT title, released_year,
 CASE
  WHEN released_year >= 2000 THEN 'Modern Lit'
  ELSE '20th Century Lit'
 END AS GENRE
FROM books
ORDER BY released_year;

SELECT title, stock_quantity,
 CASE
  WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
  WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
  ELSE '***'
 END AS STOCK
FROM books
ORDER BY stock_quantity;

SELECT title,
 CASE
  WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
  WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
  ELSE '***'
 END AS STOCK
FROM books
ORDER BY stock_quantity;
  
SELECT title, stock_quantity,
 CASE
  WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
  WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
  WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
  ELSE '****'
 END AS STOCK
FROM books
ORDER BY stock_quantity;

SELECT title, stock_quantity,
 CASE
  WHEN stock_quantity <= 50 THEN '*'
  WHEN stock_quantity <= 100 THEN '**'
  ELSE '***'
 END AS STOCK
FROM books
ORDER BY stock_quantity;

-- IS NULL
SELECT *
FROM books
WHERE author_lname IS NULL;

DELETE FROM books
WHERE author_lname IS NULL;

SELECT *
FROM books
WHERE author_lname IS NULL;















































