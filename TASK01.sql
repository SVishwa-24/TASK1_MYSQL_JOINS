create database sql_task01;
use sql_task01;

-- Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    CourseID INT
);

INSERT INTO Students VALUES
(1, 'Aarav', 101),
(2, 'Bianca', 102),
(3, 'Chetan', 103),
(4, 'Divya', NULL),
(5, 'Eshan', 102),
(6, 'Farah', 104),
(7, 'Gopal', 105),
(8, 'Harsha', NULL),
(9, 'Ishaan', 101),
(10, 'Jyoti', 106),
(11, 'Karan', NULL),
(12, 'Leela', 103);

-- Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

INSERT INTO Courses VALUES
(101, 'Data Structures'),
(102, 'Web Development'),
(103, 'SQL & Databases'),
(104, 'Operating Systems'),
(105, 'Computer Networks'),
(106, 'Machine Learning'),
(107, 'Cybersecurity'),
(108, 'Cloud Computing');

-- INNER JOIN
-- Returns only students enrolled in a course (matched CourseIDs).
SELECT S.StudentName, C.CourseName
FROM Students S
INNER JOIN Courses C ON S.CourseID = C.CourseID;

-- LEFT JOIN
-- Returns all students, even those not enrolled in a course (CourseName = NULL).
SELECT S.StudentName, C.CourseName
FROM Students S
LEFT JOIN Courses C ON S.CourseID = C.CourseID;

-- RIGHT JOIN
-- Returns all courses, even those with no enrolled students (StudentName = NULL).


SELECT S.StudentName, C.CourseName
FROM Students S
RIGHT JOIN Courses C ON S.CourseID = C.CourseID;

-- FULL OUTER JOIN (using UNION)
-- Returns all students and all courses — combining both unmatched and matched.

SELECT S.StudentName, C.CourseName
FROM Students S
LEFT JOIN Courses C ON S.CourseID = C.CourseID
UNION
SELECT S.StudentName, C.CourseName
FROM Students S
RIGHT JOIN Courses C ON S.CourseID = C.CourseID;



