
-- STEP 1 : Create Database
CREATE DATABASE company_db;
USE company_db;

-- STEP 2 : Create Table
CREATE TABLE employees(emp_id INT PRIMARY KEY, emp_name VARCHAR(50), department VARCHAR(50), salary DECIMAL(10,2));



-- DDL (Data Definition Language)
-- Used to define or modify database structure.
-- Commands: CREATE, ALTER, DROP, TRUNCATE, RENAME

-- CREATE
CREATE TABLE projects(project_id INT PRIMARY KEY, project_name VARCHAR(50));

-- ALTER
ALTER TABLE employees ADD email VARCHAR(100);

-- RENAME
RENAME TABLE projects TO company_projects;

-- TRUNCATE
TRUNCATE TABLE company_projects;

-- DROP
DROP TABLE company_projects;



-- DML (Data Manipulation Language)
-- Used to insert, update and delete records.
-- Commands: INSERT, UPDATE, DELETE

-- INSERT
INSERT INTO employees VALUES (101,'Aarya','IT',50000), (102,'Rahul','HR',35000), (103,'Sneha','Finance',45000);

-- UPDATE
UPDATE employees SET salary = 55000 WHERE emp_id = 101;

-- DELETE
DELETE FROM employees WHERE emp_id = 102;



-- DQL (Data Query Language)
-- Used to retrieve data from database.
-- Command: SELECT


SELECT * FROM employees;

SELECT emp_name, salary FROM employees;



-- DCL (Data Control Language)
-- Used to give or remove permissions.
-- Commands: GRANT, REVOKE

-- Grant SELECT permission
GRANT SELECT ON company_db.employees TO 'username'@'localhost';

-- Remove SELECT permission
REVOKE SELECT ON company_db.employees  FROM 'username'@'localhost';



-- TCL (Transaction Control Language)
-- Used to manage transactions.
-- Commands: COMMIT, ROLLBACK, SAVEPOINT


START TRANSACTION;
INSERT INTO employees VALUES (104,'Riya','Marketing',42000);


SAVEPOINT sp1;
UPDATE employees SET salary = 47000 WHERE emp_id = 104;

ROLLBACK TO sp1;

COMMIT;

-- Display Final Data
SELECT * FROM employees;
