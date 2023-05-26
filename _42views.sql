-- CREATING VIEWS


CREATE VIEW full_reviews AS
SELECT title, released_year, genre, rating, first_name, last_name
FROM reviews
JOIN series
ON series.id = reviews.series_id
JOIN reviewers
ON reviews.reviewer_id = reviewers.id;

SHOW TABLES;

SELECT *
FROM full_reviews;

SELECT *
FROM full_reviews
WHERE genre = 'Animation';

SELECT genre, AVG(rating) AS avg_rating
FROM full_reviews
GROUP BY genre
ORDER BY avg_rating;

DROP VIEW full_reviews;


-- UPDATEABLE VIEWS
CREATE VIEW ordered_series AS
SELECT *
FROM series
ORDER BY released_year;

INSERT INTO ordered_series (title, released_year, genre)
VALUES('The Great',  2020, 'Comedy');

SELECT *
FROM series;

SELECT *
FROM ordered_series;

DELETE FROM ordered_series
WHERE title = 'The Great';


-- Replacing/Altering Views
CREATE OR REPLACE VIEW ordered_series AS
SELECT *
FROM series
ORDER BY released_year DESC;

ALTER VIEW ordered_series AS
SELECT *
FROM series
ORDER BY released_year;

SELECT *
FROM ordered_series;

DROP VIEW ordered_series;



