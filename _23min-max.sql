SELECT MIN(released_year)
FROM books;

SELECT MIN(pages)
FROM books;

SELECT MAX(released_year)
FROM books;

SELECT MAX(pages)
FROM books;

SELECT MAX(pages), ANY_VALUE(title)
FROM books;

SELECT title, pages
FROM books;

-- One potential solution -- USING SUBQUERIES
SELECT *
FROM books
WHERE pages = (SELECT MIN(pages) FROM books);

SELECT MAX(pages)
FROM books;

SELECT *
FROM books
WHERE pages = 634;

SELECT title, pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT title, pages
FROM books
WHERE pages = (SELECT MIN(pages) FROM books);

SELECT title, pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books); 

-- Another solution
SELECT *
FROM books
ORDER BY pages ASC
LIMIT 1;

SELECT title, pages
FROM books
ORDER BY pages ASC
LIMIT 1;

SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

-- Adding another column with the same page count
INSERT INTO books(title, pages)
VALUES('My life', 634);

SELECT title, pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 2;

-- Title of the book released earliest
SELECT title, released_year
FROM books
WHERE released_year = (SELECT MIN(released_year) FROM books);



















