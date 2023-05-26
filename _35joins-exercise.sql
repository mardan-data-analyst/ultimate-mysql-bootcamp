-- 1
CREATE TABLE students (
first_name VARCHAR(100),
id INT PRIMARY KEY AUTO_INCREMENT
);


CREATE TABLE papers
(
title VARCHAR(255),
grade INT,
student_id INT,
FOREIGN KEY(student_id) REFERENCES students(id)
ON DELETE CASCADE
);

INSERT INTO students (first_name) 
VALUES ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) 
VALUES
	(1, 'My First Book Report', 60),
	(1, 'My Second Book Report', 75),
	(2, 'Russian Lit Through The Ages', 94),
	(2, 'De Montaigne and The Art of The Essay', 98),
	(4, 'Borges and Magical Realism', 89);

SELECT *
FROM students;

SELECT *
FROM papers;

DESC students;

DESC papers;

-- 2
SELECT first_name, title, grade
FROM students
INNER JOIN papers
ON students.id = papers.student_id
ORDER BY grade DESC;

-- ALT solution
SELECT first_name, title, grade
FROM students
RIGHT JOIN papers
ON students.id = papers.student_id
ORDER BY grade DESC;

-- 3
SELECT first_name, title, grade
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
ORDER BY first_name ASC;

-- 4
SELECT first_name, IFNULL(title,'MISSING') AS title, IFNULL(grade, 0) AS grade
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
ORDER BY first_name ASC;

-- 5
-- My solution
SELECT first_name, IFNULL(AVG(grade), 0) AS average
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;

-- ALT solution
SELECT first_name, IFNULL(AVG(grade), 0) AS average
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

-- 6
-- My solution
SELECT first_name, IFNULL(AVG(grade), 0) AS average,
 CASE
  WHEN AVG(grade) >= 75 THEN 'PASSING'
  ELSE 'FAILING'
 END AS passing_status
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;

-- Course solution
SELECT first_name, IFNULL(AVG(grade), 0) AS average,
 CASE
  WHEN AVG(grade) >= 75 THEN 'PASSING'
  WHEN AVG(grade) IS NULL THEN 'FAILING'
  ELSE 'FAILING'
 END AS passing_status
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

SELECT NULL >= 75;


DROP TABLE customers1, customers2, orders1, orders2, papers, students;

