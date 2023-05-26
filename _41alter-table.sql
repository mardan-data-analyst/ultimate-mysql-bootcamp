-- ADD COLUMNS

ALTER TABLE companies
ADD phone VARCHAR(15);

ALTER TABLE companies
ADD employee_count INT NOT NULL;

SELECT *
FROM companies;


-- DROP COLUMNS
ALTER TABLE companies
DROP COLUMN phone;

ALTER TABLE companies
DROP COLUMN employee_count;

DESC companies;


-- RENAMING [TABLES]  & [COLUMNS]
-- [TABLES]
SHOW TABLES;

RENAME TABLE companies TO suppliers;

SELECT *
FROM suppliers;

ALTER TABLE suppliers
RENAME TO companies;

SELECT *
FROM companies;

-- [COLUMNS]
ALTER TABLE companies
RENAME COLUMN name TO company_name;

DESC companies;


-- Modifying columns
ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';

DESC companies;

INSERT INTO companies(address)
VALUES('2555 rose lane');

SELECT *
FROM companies;

-- ADD and DELETE CONSTRAINTS
SELECT *
FROM houses;

DESC houses;

ALTER TABLE houses
ADD CONSTRAINT positive_pprice CHECK(purchase_price >= 0);

DESC houses;

INSERT INTO houses(purchase_price, sale_price)
VALUES(-500, 400);

ALTER TABLE houses
DROP CONSTRAINT positive_pprice;

INSERT INTO houses(purchase_price, sale_price)
VALUES(-500, 400);



