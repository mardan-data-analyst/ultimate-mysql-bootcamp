SELECT title, author_lname
FROM books;

-- SET SESSION sql_mode = sys.list_add(@@session.sql_mode, 'ONLY_FULL_GROUP_BY'); Default grouping option
SELECT ANY_VALUE(title) AS title, ANY_VALUE(author_lname) AS author_lname
FROM books
GROUP BY author_lname;

SELECT author_lname, COUNT(*)
FROM books
GROUP BY author_lname;

SELECT title, author_fname, author_lname
FROM books;

SELECT ANY_VALUE(title) AS title, ANY_VALUE(author_fname) AS name, ANY_VALUE(author_lname) surname,
COUNT(*) AS 'number of books'
FROM books
GROUP BY author_lname;

SELECT ANY_VALUE(author_fname) AS name, ANY_VALUE(author_lname) surname,
COUNT(*) AS 'number of books'
FROM books
GROUP BY author_lname, author_fname;

SELECT ANY_VALUE(released_year), COUNT(*)
FROM books
GROUP BY released_year;

SELECT CONCAT('In ', ANY_VALUE(released_year), ' ', COUNT(*), ' book(s) were released.') AS report
FROM books
GROUP BY released_year
ORDER BY released_year;

SELECT ANY_VALUE(author_fname) AS name, ANY_VALUE(author_lname) AS surname, COUNT(*)
FROM books
GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS author, COUNT(*)
FROM books
GROUP BY author;

