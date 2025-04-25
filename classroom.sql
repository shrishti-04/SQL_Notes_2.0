CREATE DATABASE college;
-- Ensure this script is run in an environment that allows database creation, such as a root or admin user.

USE college;

CREATE TABLE student_data(
	roll_number INT PRIMARY KEY,
    student_name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

-- Insert data into the table

INSERT INTO student_data
    (roll_number, student_name, marks, grade, city) 
    VALUES 
        (101, 'Shrishti', 90, 'A', 'Pune'),
        (102, 'Siddhi', 80, 'B', 'Mumbai'),
        (103, 'Shivam', 78, 'C', 'Delhi'),
        (104, 'Shreya', 65, 'C', 'Mumbai'),
        (105, 'Anil', 95, 'C', 'Delhi'),
        (106, 'Sakshi', 85, 'B', 'Pune');

    
SELECT student_name, marks FROM student_data;

SELECT DISTINCT city FROM student_data;

SELECT * FROM student_data
WHERE marks > 80 AND city = 'Pune';

SELECT * FROM student_data
WHERE marks BETWEEN 85 AND 95;

SELECT * FROM student_data
WHERE city IN ('Pune', 'Mumbai');

SELECT * FROM student_data
WHERE city NOT IN ('Pune', 'Mumbai');

SELECT * FROM student_data
WHERE marks > 80
LIMIT 3;

SELECT * FROM student_data
WHERE marks > 80
LIMIT 3;

SELECT * FROM student_data
ORDER BY marks ASC;

SELECT * FROM student_data
ORDER BY marks DESC
LIMIT 3;

-- Aggregate functions
SELECT MAX(marks) from student_data;
SELECT MIN(marks) from student_data;
SELECT AVG(marks) from student_data;
SELECT COUNT(student_name) from student_data;

SELECT city, avg(marks) AS student_marks FROM student_data
GROUP BY city
ORDER BY student_marks DESC;

SELECT city, COUNT(student_name)
FROM student_data
GROUP BY city
HAVING MAX(marks) >= 90;

SET SQL_SAFE_UPDATES = 0;

UPDATE student_data
SET student_name = 'Sid'
WHERE student_name = 'Siddhi';

SELECT * FROM student_data;

UPDATE student_data
SET grade = 'A'
WHERE student_name = 'Anil';

SELECT * FROM student_data;

UPDATE student_data
SET marks = marks + 1;

SELECT * FROM student_data;