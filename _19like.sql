-- '%text%' wildcard

SELECT title, author_fname
FROM books
WHERE author_fname
LIKE '%da%';

SELECT title, author_fname
FROM books
WHERE author_fname
LIKE 'da%';

-- Case insensitve
SELECT title
FROM books
WHERE title
LIKE '%the%';


-- '_' wildcard
SELECT title, stock_quantity
FROM books;

SELECT title, stock_quantity
FROM books
WHERE stock_quantity
LIKE '%';

-- 4 digits quantities
SELECT title, stock_quantity
FROM books
WHERE stock_quantity
LIKE '____';

-- 2 digits quantities
SELECT title, stock_quantity
FROM books
WHERE stock_quantity
LIKE '__';

-- Escape character
SELECT title
FROM books
WHERE title
LIKE '%\%%';

SELECT title
FROM books
WHERE title
LIKE '%\_%';

