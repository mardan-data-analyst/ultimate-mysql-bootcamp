SELECT REPLACE('Hello, World!', 'Hell', '#####');

SELECT REPLACE('Hello, World!', 'l', '7');

SELECT REPLACE('Hello, World!', 'o', '0');

-- Case sensitive
SELECT REPLACE('HellO, World!', 'o', '*');
-- 

SELECT REPLACE('cheese bread coffe milk', ' ', ' and ');

SELECT REPLACE(title, 'e', '3') AS 'Replaced title'
FROM books;

SELECT
 SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'Replaced title'
FROM books;