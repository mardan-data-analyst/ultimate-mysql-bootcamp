SELECT SUM(pages)
FROM books;

SELECT SUM(released_year)
FROM books;

SELECT ANY_VALUE(author_fname), ANY_VALUE(author_lname), SUM(pages)
FROM books
GROUP BY author_lname, author_fname;

SELECT ANY_VALUE(author_fname), ANY_VALUE(author_lname), SUM(released_year)
FROM books
GROUP BY author_lname, author_fname;

