-- OVER function

CREATE DATABASE window_db;
USE window_db;

CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);
 
INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

SELECT *
FROM employees;

-- GROUP BY
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- GROUP BY
SELECT AVG(salary)
FROM employees;


-- OVER
SELECT AVG(salary) OVER()
FROM employees;

SELECT emp_no, department, salary, AVG(salary) OVER()
FROM employees;

SELECT emp_no, department, salary,SUM(salary) OVER()
FROM employees;


SELECT emp_no, department, salary,MIN(salary) OVER()
FROM employees;

SELECT emp_no, department, salary,MAX(salary) OVER()
FROM employees;


SELECT emp_no,
       department,
       salary,
       MIN(salary) OVER() AS company_min,
       MAX(salary) OVER() AS company_max,
       SUM(salary) OVER() AS company_total
FROM employees;


-- PARTITION BY
SELECT emp_no,
       department,
       salary,
       MIN(salary) OVER(PARTITION BY department) AS department_min,
       MIN(salary) OVER() AS company_min,
       MAX(salary) OVER(PARTITION BY department) AS department_max,
       MAX(salary) OVER() AS company_max,
       AVG(salary) OVER(PARTITION BY department) AS department_avg,
       AVG(salary) OVER() AS company_avg,
       SUM(salary) OVER(PARTITION BY department) AS department_total,
       SUM(salary) OVER() AS company_total
FROM employees;


SELECT emp_no,
       department,
       salary,
       COUNT(emp_no) OVER(PARTITION BY department) AS department_count,
       COUNT(emp_no) OVER() AS company_count
FROM employees;


-- ORDER BY with Windows
-- below code results in different results
SELECT
    emp_no, 
    department,
    salary,
    SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dept_salary,
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary,
    MIN(salary) OVER(PARTITION BY department ORDER BY salary ASC) AS rolling_min
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary,
    MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_min
FROM employees;

SELECT *
FROM employees
ORDER BY salary;


-- RANK() function
SELECT 
    emp_no, 
    department, 
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS department_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM employees
ORDER BY department;


-- DENSE_RANK, & ROW_NUMBER()
SELECT 
    emp_no, 
    department, 
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS department_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS overall_dense_rank,
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS overall_row_num
FROM employees
ORDER BY overall_rank;


-- NTILE()
SELECT 
    emp_no, 
    department, 
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;


-- FIRST_VALUE
SELECT 
    emp_no, 
    department, 
    salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) AS highest_paid_dept,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC)  AS highest_overall
FROM employees;


--  LEAD and LAG
SELECT 
    emp_no, 
    department, 
    salary, 
    LAG(salary) OVER(ORDER BY salary DESC) AS salary_dif
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary, 
    LAG(salary, 2) OVER(ORDER BY salary DESC) AS salary_dif
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary, 
    LEAD(salary) OVER(ORDER BY salary DESC) AS salary_dif
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary, 
    LEAD(salary, 2) OVER(ORDER BY salary DESC) AS salary_dif
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary, 
    salary - LAG(salary) OVER(ORDER BY salary DESC) AS salary_dif
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary, 
    salary - LEAD(salary) OVER(ORDER BY salary DESC) AS salary_dif
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary, 
    salary - LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS salary_dif
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary, 
    salary - LEAD(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS salary_dif
FROM employees;



