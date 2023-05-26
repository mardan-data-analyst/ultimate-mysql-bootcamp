-- 1
SELECT 10 != 10 AS 'FALSE';

SELECT 15 > 14 AND 99 - 5 <= 94 AS 'TRUE';

SELECT 1 IN(5, 3) OR 9 BETWEEN 8 AND 10 AS 'TRUE'; 

-- 2
SELECT title, released_year
FROM books
WHERE released_year < 1980;

-- 3
-- Method 1
SELECT title, author_lname
FROM books
WHERE author_lname IN('Eggers', 'Chabon');

-- Method 2
SELECT title, author_lname
FROM books
WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';

-- 4
SELECT title, author_lname, released_year
FROM books
WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- 5
-- Method 1
SELECT title, pages
FROM books
WHERE pages BETWEEN 100 AND 200
ORDER BY pages;

-- 5
-- Method 2
SELECT title, pages
FROM books
WHERE pages >= 100 AND pages <= 200
ORDER BY pages;

-- 6
-- Method 1
SELECT author_fname, author_lname
FROM books
WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

-- Method 2
SELECT author_fname, author_lname
FROM books
WHERE SUBSTR(author_lname, 1, 1) = 'C' OR SUBSTR(author_lname, 1, 1) = 'S';

-- Method 3 
SELECT author_fname, author_lname
FROM books
WHERE SUBSTR(author_lname, 1, 1) IN ('C', 'S');

-- 7
-- My solution
SELECT title, author_fname, author_lname,
 CASE
  WHEN title LIKE '%stories' THEN 'Short stories'
  WHEN title LIKE '%Just kids%' OR title LIKE '%A Heartbreaking work%' THEN 'Memoir'
  ELSE 'Novel'
 END AS TYPE
FROM books;

-- Course solution
SELECT title, author_fname, author_lname,
 CASE
  WHEN title LIKE '%stories' THEN 'Short stories'
  WHEN title = 'Just kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
  ELSE 'Novel'
 END AS TYPE
FROM books;

-- 8
SELECT author_fname, author_lname,
 CASE
  WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*), ' book')
  ELSE CONCAT(COUNT(*), ' books')
 END AS 'COUNT'
FROM books
GROUP BY author_lname, author_fname
ORDER BY COUNT(*) DESC;

 
DROP TABLE books;


