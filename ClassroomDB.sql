CREATE DATABASE classroomDB;
USE classroomDB;

CREATE TABLE Students (
  student_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER DEFAULT 18,
  course TEXT,
  marks REAL,
  grade TEXT
);

-- inserting sample data
INSERT INTO Students (student_id, name, age, course, marks, grade) VALUES
(1, 'Akhil Dev', 20, 'Math', 89.5, 'A'),
(2, 'Sneha Roy', 19, 'Science', 92.0, 'A'),
(3, 'Ravi Kumar', 21, 'History', 75.5, 'B'),
(4, 'Nikhil Jain', 18, 'Math', 68.0, 'C'),
(5, 'Ananya Das', 22, 'Science', 55.0, 'D'),
(6, 'Thala Dhoni', 24, 'Sports', NULL, NULL),
(7, 'Cherry Star', 23, 'Music', 88.0, 'B'),
(8, 'Raj Patel', 20, 'Math', 48.0, 'F'),
(9, 'Mahesh Babu', 22, 'Drama', 79.0, 'B'),
(10, 'Vamshi K', 19, 'Science', NULL, NULL);

-- SELECT OPERATION
SELECT * FROM Students;
select name, course from Students;
select student_id, course, grade from Students;

-- WHERE, AND/OR, LIKE
select * from Students where course = 'science';
select name, marks from students where age < 21 and marks > 60 or marks = 48;
select * from Students where name like 'A%';
select * from Students where name like '%r';

-- BETWEEN and IS NULL
select name, marks from Students where marks between 70 and 90;
select * from Students where marks is null;

-- ORDER BY and LIMIT
select name, marks from Students order by marks desc limit 3;
select name, age from Students order by age ASC limit 2;


