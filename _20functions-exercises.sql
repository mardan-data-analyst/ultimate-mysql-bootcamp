-- 1
SELECT title
FROM books
WHERE title
LIKE '%stories%';

-- 2
SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

-- 3
SELECT CONCAT(title, ' - ', released_year) AS summary
FROM books
ORDER BY released_year DESC
LIMIT 3;

-- 4
SELECT title, author_lname
FROM books
WHERE author_lname
LIKE '% %';

-- 5
SELECT title, released_year, stock_quantity
FROM books
ORDER BY stock_quantity
LIMIT 3;

--6
SELECT title, author_lname
FROM books
ORDER BY author_lname, title;

-- 7
-- MY SOLUTION
SELECT
 CONCAT('MY FAVORITE AUTHOR IS ', UPPER(CONCAT(author_fname, ' ', author_lname)), '!') AS yell
FROM books
ORDER BY author_lname;

-- COURSE SOLUTION
SELECT
 CONCAT('MY FAVORITE AUTHOR IS ', UPPER(author_fname), ' ', UPPER(author_lname), '!') AS yell
FROM books
ORDER BY author_lname;

