SELECT title
FROM books;

SELECT title
FROM books
LIMIT 3;

SELECT *
FROM books
LIMIT 1;

SELECT title, released_year
FROM books;

SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 5;

SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 0, 5;

SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 0, 3;

SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 1, 3;

SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 10, 1;

-- From any starting point up to the end of table
SELECT title
FROM books
LIMIT 5;

SELECT title
FROM books
LIMIT 5, 155454545;


