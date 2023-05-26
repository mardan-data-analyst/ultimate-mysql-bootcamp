-- Instagram Challenge #1

SELECT *
FROM users
ORDER BY created_at ASC
LIMIT 5;


-- Instagram Challenge #2

-- My solution
SELECT DATE_FORMAT(created_at, '%W') AS popular_weekday, COUNT(id) AS count
FROM users
GROUP BY popular_weekday
ORDER BY count DESC;

-- Course solution

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;


-- Instagram Challenge #3

-- My solution with LEFT JOIN
SELECT users.id, users.username
FROM users
LEFT JOIN photos
ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- My solution with RIGHT JOIN
SELECT users.id, users.username
FROM photos
RIGHT JOIN users
ON users.id = photos.user_id
WHERE photos.id IS NULL;



-- Instagram Challenge #4

-- My solution

SELECT users.username, photos.id, photos.image_url, COUNT(*) AS num_of_likes
FROM photos
INNER JOIN likes
ON photos.id = likes.photo_id
INNER join users
ON users.id = photos.user_id
GROUP BY photos.id
ORDER BY num_of_likes DESC;

-- Course solution
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- Instagram Challenge #5
-- My solution
SELECT username, AVG(photos.user_id)  as avg_num_of_posts
FROM users
LEFT JOIN photos
ON users.id = photos.user_id
GROUP BY users.id
ORDER BY avg_num_of_posts;

-- Course solution
SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg;
                          
-- Instagram Challenge #6

-- My solution
SELECT *
FROM photo_tags
LIMIT 5;

SELECT *
FROM tags;

SELECT tag_name, ANY_VALUE(photo_id) AS photo_id,  COUNT(tag_name) AS num_of_tags
FROM photo_tags
INNER JOIN tags
WHERE photo_tags.tag_id = tags.id
GROUP BY tag_id
ORDER BY num_of_tags DESC
LIMIT 5;

-- Course solution
SELECT tags.tag_name, 
       Count(*) AS total 
FROM   photo_tags 
       JOIN tags 
         ON photo_tags.tag_id = tags.id 
GROUP  BY tags.id 
ORDER  BY total DESC 
LIMIT  5;



-- Instagram Challenge #7
-- My solution
SELECT COUNT(photos.id)
FROM photos;

SELECT username, COUNT(likes.photo_id) OVER(PARTITION BY likes.user_id) AS every_like
FROM users
INNER JOIN likes
ON users.id = likes.user_id
ORDER BY every_like DESC;

-- Num of likes is 257, so if total number of likes by a user is equal to 257 it can be considered a bot.


-- Course solution
SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 




