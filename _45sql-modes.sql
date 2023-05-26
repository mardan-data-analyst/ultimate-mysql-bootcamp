SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.sql_mode;

-- SET GLOBAL sql_mode = 'modes'
-- SET SESSION sql_mode = 'modes'

-- Before altering modes
SELECT 3/0;
SHOW WARNINGS;


SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';

-- After altering modes
SELECT 3/0;
SHOW WARNINGS;


-- STRICT_TRANS_TABLES TRANS -> TRANSACTIONAL

-- Before disabling STRICT_TRANS_TABLES TRANS mode
INSERT INTO reviews(rating)
VALUES('hi');

-- Disable all modes
SET SESSION sql_mode = '';

-- After disabling STRICT_TRANS_TABLES TRANS mode
INSERT INTO reviews(rating)
VALUES('hi');

-- Enable again
SET SESSION sql_mode = 'STRICT_TRANS_TABLES';


-- ONLY_FULL_GROUP_BY
SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY';

-- Full GROUP BY
SELECT title, AVG(rating) AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY title;

-- Error before disabling ONLY_FULL_GROUP_BY mode
SELECT title, rating AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY title;

SET SESSION sql_mode = '';

-- After disabling ONLY_FULL_GROUP_BY mode
SELECT title, rating AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY title;

-- Reenabling ONLY_FULL_GROUP_BY mode
SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY';
SELECT title, AVG(rating) AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY title;


-- NO_ZERO_IN_DATE mode

-- Before enabling NO_ZERO_IN_DATE
SELECT DATE('2010-01-00');

-- After enabling NO_ZERO_IN_DATE
SET SESSION sql_mode = 'NO_ZERO_IN_DATE';

SELECT DATE('2010-01-00');
SHOW WARNINGS;

CREATE TABLE dates(d DATE);

INSERT INTO dates(d)
VALUES('2023-11-00');

SELECT *
FROM dates;

SET SESSION sql_mode = 'NO_ZERO_IN_DATE,STRICT_TRANS_TABLES';

INSERT INTO dates(d)
VALUES('2023-11-00');



