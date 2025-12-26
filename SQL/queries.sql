-- 1. Create Database
CREATE DATABASE college;

-- 2. Use Database
USE college;

-- 3. Create Department Table (Primary Key, Unique, Not Null)
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL
);

-- 4. Create Student Table (PK, FK, Check, Default)
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    marks INT DEFAULT 0,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

-- 5. Insert Values into Department
INSERT INTO department VALUES (1, 'CSE'), (2, 'IT');

-- 6. Insert Values into Student
INSERT INTO student VALUES
(101, 'Vedant', 21, 85, 1),
(102, 'Amit', 22, 90, 1),
(103, 'Riya', 20, 70, 2);

-- 7. Select All Records
SELECT * FROM student;

-- 8. Select Distinct
SELECT DISTINCT dept_id FROM student;

-- 9. Where Clause
SELECT * FROM student WHERE marks > 80;

-- 10. AND / OR
SELECT * FROM student WHERE marks > 80 AND age > 20;

-- 11. Order By
SELECT * FROM student ORDER BY marks DESC;

-- 12. Update Record
UPDATE student SET marks = 95 WHERE student_id = 101;

-- 13. Delete Record
DELETE FROM student WHERE student_id = 103;

-- 14. SQL Injection Example (Concept)
SELECT * FROM student WHERE name = 'Vedant' OR '1'='1';

-- 15. Select Top / Limit
SELECT * FROM student LIMIT 2;

-- 16. Like Operator
SELECT * FROM student WHERE name LIKE 'V%';

-- 17. Wildcard
SELECT * FROM student WHERE name LIKE '_e%';

-- 18. IN Operator
SELECT * FROM student WHERE dept_id IN (1, 2);

-- 19. Between Operator
SELECT * FROM student WHERE marks BETWEEN 80 AND 95;

-- 20. Alias
SELECT name AS Student_Name, marks AS Score FROM student;

-- 21. Inner Join
SELECT s.name, d.dept_name
FROM student s
INNER JOIN department d ON s.dept_id = d.dept_id;

-- 22. Left Join
SELECT s.name, d.dept_name
FROM student s
LEFT JOIN department d ON s.dept_id = d.dept_id;

-- 23. Right Join
SELECT s.name, d.dept_name
FROM student s
RIGHT JOIN department d ON s.dept_id = d.dept_id;

-- 24. Union
SELECT name FROM student
UNION
SELECT dept_name FROM department;

-- 25. Select Into
SELECT * INTO student_backup FROM student;

-- 26. Insert Into Select
INSERT INTO student_backup SELECT * FROM student;

-- 27. Create Index
CREATE INDEX idx_marks ON student(marks);

-- 28. Alter Table
ALTER TABLE student ADD email VARCHAR(50);

-- 29. View Creation
CREATE VIEW high_scorers AS
SELECT name, marks FROM student WHERE marks > 85;

-- 30. Null Values
SELECT * FROM student WHERE email IS NULL;

-- 31. Group By
SELECT dept_id, AVG(marks) FROM student GROUP BY dept_id;

-- 32. Having Clause
SELECT dept_id, AVG(marks)
FROM student
GROUP BY dept_id
HAVING AVG(marks) > 80;
