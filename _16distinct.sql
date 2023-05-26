INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
          ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
          ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
          

SELECT title
FROM books;

-- NOT DISTINCT
SELECT author_lname
FROM books;

-- DISTINCT
SELECT DISTINCT author_lname
FROM books;

-- NOT DISTINCT
SELECT released_year
FROM books;

-- DISTINCT
SELECT DISTINCT released_year
FROM books;

-- Two Harris with different first names
SELECT author_fname, author_lname
FROM books;

-- Distinct full names
SELECT DISTINCT
 CONCAT(author_fname, ' ', author_lname) AS 'Distinct Full Names'
FROM books;

SELECT DISTINCT author_fname, author_lname
FROM books;

-- This query returns all the distinct combinations of three columns.
SELECT DISTINCT author_fname, author_lname, released_year FROM books;

