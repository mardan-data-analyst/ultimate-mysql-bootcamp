SELECT *
FROM full_reviews;

SELECT AVG(rating) AS avg_rating
FROM full_reviews;

-- GROUP BY title AVG
SELECT title, AVG(rating) AS avg_rating
FROM full_reviews
GROUP BY title;

-- GROUP BY title AVG WITH ROLLUP
SELECT title, AVG(rating) AS avg_rating
FROM full_reviews
GROUP BY title WITH ROLLUP;

-- GROUP BY title COUNT
SELECT title, COUNT(rating) AS rating_count
FROM full_reviews
GROUP BY title;

-- GROUP BY title COUNT WITH ROLLUP
SELECT title, COUNT(rating) AS rating_count
FROM full_reviews
GROUP BY title WITH ROLLUP;

-- GROUP BY released_year AVG
SELECT released_year, AVG(rating) AS rating_count
FROM full_reviews
GROUP BY released_year;

-- GROUP BY released_year AVG WITH ROLLUP
SELECT released_year, AVG(rating) AS avg_rating
FROM full_reviews
GROUP BY released_year WITH ROLLUP;

-- GROUP BY released_year, genre AVG
SELECT released_year, genre, AVG(rating) AS avg_rating
FROM full_reviews
GROUP BY released_year, genre;

-- GROUP BY released_year, genre AVG WITH ROLLUP
SELECT released_year, genre, AVG(rating) AS avg_rating
FROM full_reviews
GROUP BY released_year, genre WITH ROLLUP;

-- GROUP BY released_year, genre, first_name AVG WITH ROLLUP
SELECT released_year, genre,first_name, AVG(rating) AS avg_rating
FROM full_reviews
GROUP BY released_year, genre, first_name WITH ROLLUP;


