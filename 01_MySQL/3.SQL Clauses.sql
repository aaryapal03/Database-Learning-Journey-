
CREATE DATABASE college_db;
USE college_db;

CREATE TABLE students(student_id INT PRIMARY KEY,name VARCHAR(50),age INT,city VARCHAR(50),course VARCHAR(50),marks INT);

INSERT INTO students VALUES(101,'Aarya',18,'Panvel','BCA',92), (102,'Rahul',19,'Mumbai','BCA',85), (103,'Sneha',18,'Pune','BSc',78), (104,'Amit',20,'Mumbai','BCA',88),(105,'Priya',19,'Panvel','BCom',95), (106,'Rohan',20,NULL,'BCA',80), (107,'Anjali',21,'Mumbai','BSc',90), (108,'Karan',19,'Panvel','BCA',75);

-- WHERE Clause (Used to filter records based on a condition)
SELECT * FROM students WHERE city='Mumbai';

-- DISTINCT Clause (Used to display unique values)
SELECT DISTINCT city FROM students;

-- ORDER BY Clause (Ascending Order)
SELECT * FROM students ORDER BY marks ASC;

-- ORDER BY Clause (Descending Order)
SELECT * FROM students ORDER BY marks DESC;

-- LIMIT Clause (Display first 3 records)
SELECT * FROM students LIMIT 3;

-- BETWEEN Clause (Values within a range)
SELECT * FROM students WHERE marks BETWEEN 80 AND 95;

-- IN Clause (Match multiple values)
SELECT * FROM students WHERE city IN('Mumbai','Panvel');

-- LIKE Clause (Name starts with 'A')
SELECT * FROM students WHERE name LIKE 'A%';

-- LIKE Clause (Name ends with 'a')
SELECT * FROM students WHERE name LIKE '%a';
+
-- LIKE Clause (Name contains 'h')
SELECT * FROM students WHERE name LIKE '%h%';

-- LIKE Clause (Second letter is 'a')
SELECT * FROM students WHERE name LIKE '_a%';

-- IS NULL Clause (Display NULL values)
SELECT * FROM students WHERE city IS NULL;

-- IS NOT NULL Clause (Display non-NULL values)
SELECT * FROM students WHERE city IS NOT NULL;

-- GROUP BY Clause (Count students city-wise)
SELECT city,COUNT(*) AS Total_Students FROM students GROUP BY city;

-- GROUP BY with SUM()
SELECT course,SUM(marks) AS Total_Marks FROM students GROUP BY course;

-- GROUP BY with AVG()
SELECT course,AVG(marks) AS Average_Marks FROM students GROUP BY course;

-- HAVING Clause (Average marks greater than 85)
SELECT course,AVG(marks) AS Average_Marks FROM students GROUP BY course HAVING AVG(marks)>85;

-- HAVING with COUNT()
SELECT city,COUNT(*) AS Total_Students FROM students GROUP BY city HAVING COUNT(*)>=2;

-- Multiple Clauses Together
SELECT city,COUNT(*) AS Total_Students FROM students WHERE marks>=80 GROUP BY city HAVING COUNT(*)>=1 ORDER BY Total_Students DESC LIMIT 5;

-- Display Final Table
SELECT * FROM students;
