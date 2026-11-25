
CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees(emp_id INT PRIMARY KEY,name VARCHAR(50),department VARCHAR(50),salary DECIMAL(10,2),city VARCHAR(50),joining_date DATE);

INSERT INTO employees VALUES (101,'Aarya','IT',55000,'Panvel','2025-06-15'), (102,'Rahul','HR',42000,'Mumbai','2024-02-10'), (103,'Sneha','Finance',60000,'Pune','2023-09-25'), (104,'Amit','IT',48000,'Mumbai','2022-11-18'), (105,'Priya','Marketing',51000,'Panvel','2021-08-05');



-- Aggregate Functions
-- COUNT() : Counts total records
SELECT COUNT(*) AS Total_Employees FROM employees;

-- SUM() : Calculates total salary
SELECT SUM(salary) AS Total_Salary FROM employees;

-- AVG() : Calculates average salary
SELECT AVG(salary) AS Average_Salary FROM employees;

-- MIN() : Finds minimum salary
SELECT MIN(salary) AS Minimum_Salary FROM employees;

-- MAX() : Finds maximum salary
SELECT MAX(salary) AS Maximum_Salary FROM employees;




-- String Functions
-- UPPER() : Converts text to uppercase
SELECT UPPER(name) AS Upper_Name FROM employees;

-- LOWER() : Converts text to lowercase
SELECT LOWER(name) AS Lower_Name FROM employees;

-- LENGTH() : Finds length of string
SELECT name,LENGTH(name) AS Name_Length FROM employees;

-- CONCAT() : Joins multiple strings
SELECT CONCAT(name,' works in ',department) AS Employee_Details FROM employees;

-- SUBSTRING() : Extracts characters
SELECT SUBSTRING(name,1,3) AS Short_Name FROM employees;

-- REPLACE() : Replaces text
SELECT REPLACE(city,'Mumbai','Navi Mumbai') AS Updated_City FROM employees;

-- TRIM() : Removes extra spaces
SELECT TRIM('   SQL Functions   ') AS Trimmed_Text;




-- Numeric Functions
-- ROUND() : Rounds a decimal number
SELECT ROUND(AVG(salary),2) AS Rounded_Average FROM employees;

-- CEIL() : Rounds up
SELECT CEIL(456.25) AS Ceiling_Value;

-- FLOOR() : Rounds down
SELECT FLOOR(456.99) AS Floor_Value;

-- MOD() : Returns remainder
SELECT MOD(25,4) AS Remainder;

-- ABS() : Returns absolute value
SELECT ABS(-250) AS Absolute_Value;

-- POWER() : Calculates power
SELECT POWER(5,2) AS Power_Value;

-- SQRT() : Finds square root
SELECT SQRT(81) AS Square_Root;




-- Date Functions
-- CURDATE() : Current Date
SELECT CURDATE();

-- CURTIME() : Current Time
SELECT CURTIME();

-- NOW() : Current Date & Time
SELECT NOW();

-- YEAR() : Extract year
SELECT name,YEAR(joining_date) AS Joining_Year FROM employees;

-- MONTH() : Extract month
SELECT name,MONTH(joining_date) AS Joining_Month FROM employees;

-- DAY() : Extract day
SELECT name,DAY(joining_date) AS Joining_Day FROM employees;




-- Multiple Functions Together
SELECT department,
COUNT(*) AS Total_Employees,
AVG(salary) AS Average_Salary,
MAX(salary) AS Highest_Salary,
MIN(salary) AS Lowest_Salary
FROM employees
GROUP BY department;

-- Display Final Table
SELECT * FROM employees;
