-- UPPER() = UCASE()

SELECT UPPER('Hello, World!');

SELECT UCASE('Hello, World!');

-- LOWER() =  LCASE()
SELECT LOWER('Hello, World!');

SELECT LCASE('Hello, World!');

SELECT
 UPPER(title)
FROM books;

SELECT 
 CONCAT('MY FAVOURITE BOOK IS ', UPPER(title), ' !!!') AS 'Favourite book'
FROM books;

SELECT REPEAT('ha', 4);
 
SELECT TRIM('  pickle  ');

SELECT TRIM(LEADING  '.' FROM '......ppppp  pickle......');

SELECT TRIM(TRAILING  '.' FROM 'ppppp  pickle  ......');

SELECT TRIM(BOTH '.' FROM '........ppppp  pickle  ......');



