CREATE TABLE comments(
content VARCHAR(100),
created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments(content)
VALUES('lol, what a funny article!');

INSERT INTO comments(content)
VALUES('I found this offensive.');

INSERT INTO comments(content)
VALUES('Some comment');

SELECT *
FROM comments;

SELECT *
FROM comments
ORDER BY created_at;

SELECT *
FROM comments
ORDER BY created_at DESC;

CREATE TABLE comments2(
content VARCHAR(100),
changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comments2(content)
VALUES('lol, what a funny article!');

INSERT INTO comments2(content)
VALUES('I found this offensive.');

INSERT INTO comments2(content)
VALUES('Some comment');

UPDATE comments2
SET content='Some more comment'
WHERE content='Some comment';

SELECT *
FROM comments2
ORDER BY changed_at;





