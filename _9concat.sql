SELECT author_fname, author_lname
FROM books;

-- CONCAT function

SELECT CONCAT('Hello', ', ', 'World!');

SELECT
 CONCAT(author_fname, ' ', author_lname)
FROM books;

SELECT
 CONCAT(author_fname, ' ', author_lname) AS 'full name'
FROM books;

SELECT author_fname AS name, author_lname AS surname,
 CONCAT(author_fname, ' ', author_lname) AS 'full name'
FROM books;

SELECT author_fname AS name, author_lname AS surname,
 CONCAT(author_fname, ',', author_lname) AS 'full name'
FROM books;

-- CONCAT_WS FUNCTION

SELECT
 CONCAT(title, '-', author_fname, '-', author_lname)
FROM books;

SELECT
 CONCAT_WS(' - ', title, author_fname, author_lname)
FROM books;

