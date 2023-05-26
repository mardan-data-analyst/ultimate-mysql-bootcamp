SELECT title, AVG(rating) AS avg_rating, COUNT(rating) AS review_count
FROM full_reviews
GROUP BY title;

SELECT title, AVG(rating) AS avg_rating, COUNT(rating) AS review_count
FROM full_reviews
GROUP BY title HAVING COUNT(rating) > 1;


