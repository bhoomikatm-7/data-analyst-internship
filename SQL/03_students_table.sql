CREATE DATABASE IF NOT EXISTS practice_db;
USE practice_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

INSERT INTO students (student_id, student_name, course)
VALUES
(1, 'Bhoomika', 'MCA'),
(2, 'Ananya', 'BCA');

SELECT * FROM students;
