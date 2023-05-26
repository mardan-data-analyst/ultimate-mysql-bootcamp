SHOW TABLES;
-- reviewers
-- reviews
-- series

SELECT *
FROM reviewers;

SELECT *
FROM reviews;

SELECT *
FROM series;

-- 1
SELECT title, rating
FROM series
INNER JOIN reviews
ON series.id = reviews.series_id;

-- 2
-- My solution
SELECT title, AVG(rating) AS average_rating
FROM series
INNER JOIN reviews
ON series.id = reviews.series_id
GROUP BY series.title
ORDER BY average_rating ASC;

-- ORDER BY did not work with 'average rating'.

-- Course solution
SELECT title, AVG(rating) AS average_rating
FROM series
INNER JOIN reviews
ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY average_rating ASC;

-- 3
SELECT first_name, last_name, rating
FROM reviewers
INNER JOIN reviews
ON reviewers.id = reviews.reviewer_id;

-- 4
-- with LEFT JOIN
SELECT title AS unreviewed_series
FROM series
LEFT JOIN reviews
ON series.id = reviews.series_id
WHERE rating IS NULL;

-- with RIGHT JOIN
SELECT title AS unreviewed_series
FROM reviews
RIGHT JOIN series
ON series.id = reviews.series_id
WHERE rating IS NULL;


-- 5
SELECT genre, ROUND(AVG(rating), 2) AS avg_rating
FROM series
INNER JOIN reviews
ON series.id = reviews.series_id
GROUP BY series.genre;

-- 6
-- My solution
SELECT ANY_VALUE(first_name) AS first_name, ANY_VALUE(last_name) AS last_name,
COUNT(*) as 'COUNT',
IFNULL(MIN(rating), 0) AS 'MIN',
IFNULL(MAX(rating), 0) AS 'MAX',
IFNULL(ROUND(AVG(rating),1), 0) AS 'AVG',
CASE
 WHEN ANY_VALUE(rating) IS NULL THEN 'INACTIVE'
 ELSE 'ACTIVE'
END AS STATUS
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- Course solution with CASE statement
SELECT ANY_VALUE(first_name) AS first_name, ANY_VALUE(last_name) AS last_name,
COUNT(rating) as 'COUNT',
IFNULL(MIN(rating), 0) AS 'MIN',
IFNULL(MAX(rating), 0) AS 'MAX',
IFNULL(ROUND(AVG(rating),1), 0) AS 'AVG',
CASE
 WHEN COUNT(rating) > 0  THEN 'ACTIVE'
 ELSE 'INACTIVE'
END AS STATUS
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

-- Course solution with IF function
SELECT ANY_VALUE(first_name) AS first_name, ANY_VALUE(last_name) AS last_name,
COUNT(rating) as 'COUNT',
IFNULL(MIN(rating), 0) AS 'MIN',
IFNULL(MAX(rating), 0) AS 'MAX',
IFNULL(ROUND(AVG(rating),1), 0) AS 'AVG',
IF(COUNT(rating) >  0,'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

-- Course solution with CASE statement -- more than two conditions
SELECT ANY_VALUE(first_name) AS first_name, ANY_VALUE(last_name) AS last_name,
COUNT(rating) as 'COUNT',
IFNULL(MIN(rating), 0) AS 'MIN',
IFNULL(MAX(rating), 0) AS 'MAX',
IFNULL(ROUND(AVG(rating),1), 0) AS 'AVG',
CASE
 WHEN COUNT(rating) >= 10 THEN 'POWER USER'
 WHEN COUNT(rating) > 0 THEN 'ACTIVE USER'
 ELSE 'INACTIVE'
END AS STATUS
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

-- 7
SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer
FROM series
INNER JOIN reviews
ON series.id = reviews.series_id
INNER JOIN reviewers
ON reviewers.id = reviews.reviewer_id
ORDER BY title;









