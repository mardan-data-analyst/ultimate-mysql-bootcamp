CREATE TABLE users(
username VARCHAR(20) NOT NULL,
age INT CHECK (age > 0)
);

INSERT INTO users(age, username)
VALUES(50,'bluethecat');

-- Error
INSERT INTO users2(age, username)
VALUES(-50,'bluethecat');

CREATE TABLE palindromes(
word VARCHAR(100) CHECK (REVERSE(word) = word)
);

INSERT INTO palindromes(word)
VALUES('racecar');

INSERT INTO palindromes(word)
VALUES('mom');

-- Error
INSERT INTO palindromes(word)
VALUES('racetruck');

SELECT *
FROM palindromes;

-- Named constraints

-- Users table
CREATE TABLE users2(
username VARCHAR(20) NOT NULL,
age INT,
CONSTRAINT age_not_negative CHECK (age >= 0)
);

-- Error
INSERT INTO users2(age, username)
VALUES(-50,'bluethecat');

-- Palindrome table
CREATE TABLE palindromes2(
word VARCHAR(100),
CONSTRAINT word_is_palindrome CHECK (REVERSE(word) = word)
);

INSERT INTO palindromes2(word)
VALUES('racecar');


