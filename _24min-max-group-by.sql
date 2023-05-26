SELECT ANY_VALUE(author_fname) AS name, ANY_VALUE(author_lname) AS surname, MIN(released_year) AS year
FROM books
GROUP BY author_lname;

SELECT ANY_VALUE(author_fname) AS name, ANY_VALUE(author_lname) AS surname, MIN(released_year) year
FROM books
GROUP BY author_lname, author_fname;

SELECT ANY_VALUE(author_fname) AS name, ANY_VALUE(author_lname) AS surname, MAX(pages) pages
FROM books
GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS author, MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname, author_fname;



