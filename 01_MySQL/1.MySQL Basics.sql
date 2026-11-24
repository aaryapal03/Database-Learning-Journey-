"Basics"
  
--Show all available databases
SHOW DATABASES;

-- Create a new database
CREATE DATABASE college_db;

-- Select the database
USE college_db;

-- Show the currently selected database
SELECT DATABASE();

-- Create a Student table
CREATE TABLE students (student_id INT PRIMARY KEY, name VARCHAR(50), age INT, city VARCHAR(50));

-- Show all tables in the current database
SHOW TABLES;



-- Insert a single record
INSERT INTO students VALUES (101, 'Aarya', 18, 'Panvel');

-- Insert multiple records
INSERT INTO students VALUES(102, 'Rahul', 19, 'Mumbai'), (103, 'Sneha', 18, 'Pune'), (104, 'Amit', 20, 'Navi Mumbai');

-- Display all records
SELECT * FROM students;



-- Update a single record
UPDATE students SET city = 'Thane' WHERE student_id = 102;

-- Update multiple columns
UPDATE students SET age = 19, city = 'Panvel' WHERE student_id = 103;

-- Display updated records
SELECT * FROM students;



-- Delete a specific record
DELETE FROM students WHERE student_id = 104;

-- Display records after deletion
SELECT * FROM students;



-- Delete the table
DROP TABLE students;

-- Delete the database
DROP DATABASE college_db;

-- Show databases after deleting
SHOW DATABASES;
