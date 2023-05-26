-- Count the number of rows
SELECT COUNT(*)
FROM books;

SELECT author_fname
FROM books;

-- Counts the number of NOT NULL values in a specific column
SELECT COUNT(author_fname)
FROM books;

INSERT INTO books VALUES();

-- DISTINCT is also a function
SELECT COUNT(DISTINCT(author_fname))
FROM books;

SELECT DISTINCT author_fname
FROM books;

SELECT COUNT(DISTINCT author_fname)
FROM books;

SELECT COUNT(author_fname)
FROM books;

SELECT COUNT(author_lname)
FROM books;

SELECT author_lname
FROM books;

SELECT COUNT(DISTINCT author_lname)
FROM books;

SELECT author_fname, author_lname
FROM books;

-- To retrieve DISTINCT full name
SELECT COUNT(DISTINCT author_fname, author_lname)
FROM books;

-- How many title contains 'the'
SELECT title
FROM books
WHERE title
LIKE '%the%';

-- My solution
SELECT COUNT(title)
FROM books
WHERE title LIKE '%the%';

SELECT COUNT(*)
FROM books
WHERE title
LIKE '%the%';









