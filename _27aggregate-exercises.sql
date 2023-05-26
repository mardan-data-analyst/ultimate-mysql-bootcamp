-- 1
-- Method 1
SELECT COUNT(title) AS 'number of books'
FROM books;

-- Method 2
SELECT COUNT(*) AS 'number of books'
FROM books;

-- 2
-- Method 1
SELECT released_year, COUNT(title) 'number of books'
FROM books
GROUP BY released_year;

-- Method 2
SELECT released_year, COUNT(*) AS 'number of books'
FROM books
GROUP BY released_year;

-- 3
SELECT SUM(stock_quantity) AS 'total number of books'
FROM books;

-- 4
SELECT author_fname, author_lname, AVG(released_year) AS 'average released year'
FROM books
GROUP BY author_lname, author_fname;

-- 5
-- Method 1
SELECT ANY_VALUE(CONCAT(author_fname, ' ', author_lname)) AS author, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

SELECT ANY_VALUE(CONCAT(author_fname, ' ', author_lname)) AS author, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

-- Method 2
SELECT ANY_VALUE(CONCAT(author_fname, ' ', author_lname)) AS author, pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

-- 6
SELECT released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;




