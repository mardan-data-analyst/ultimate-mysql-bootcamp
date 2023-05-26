SELECT author_lname
FROM books;

-- By default it orders in ascending order

SELECT author_lname
FROM books
ORDER BY author_lname;

SELECT title
FROM books;

SELECT title
FROM books
ORDER BY title;

-- Descending order
SELECT author_lname
FROM books
ORDER BY author_lname DESC;

SELECT title
FROM books
ORDER BY title DESC;

SELECT released_year
FROM books;

SELECT released_year
FROM books
ORDER BY released_year;

SELECT released_year
FROM books
ORDER BY released_year DESC;

SELECT released_year
FROM books
ORDER BY released_year ASC;

SELECT title, released_year, pages
FROM books
ORDER BY released_year;

SELECT title,pages
FROM books
ORDER BY released_year;

SELECT title, author_fname, author_lname
FROM books
ORDER BY 2;

SELECT title, author_fname, author_lname
FROM books
ORDER BY 3;

SELECT title, author_fname, author_lname
FROM books
ORDER BY 3 DESC;

SELECT title, author_fname, author_lname
FROM books
ORDER BY 1;

SELECT author_fname, title
FROM books
ORDER BY 2;

SELECT author_fname, author_lname
FROM books
ORDER BY author_lname;

SELECT author_fname, author_lname
FROM books
ORDER BY author_lname, author_fname;

SELECT book_id, author_fname, author_lname, pages
FROM books 
ORDER BY 2 DESC;
 
SELECT book_id, author_fname, author_lname, pages
FROM books 
ORDER BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname)  AS author
FROM books
ORDER BY author;

SELECT author_fname, author_lname, title, released_year
FROM books 
ORDER BY author_lname, author_fname, released_year;

SELECT author_fname, author_lname, title, released_year
FROM books 
ORDER BY author_lname ASC, author_fname ASC, released_year DESC;













