SQL JOIN Practice for internship

Company: CODTECH IT SOLUTIONS PVT. LTD.
Name: VISHWAS SONAR
Intern ID: CT04DH2299
Domain: SQL
Duration: 4 Weeks
Mentor: NEELA SANTOSH

Welcome to the SQL JOIN practice project built during my **CODTECH Internship**. This project demonstrates practical usage of SQL JOINs on two relational tables: `Students` and `Courses`.

 Project Structure

 sql-joins-student-course
 -sql_task01.sql
 -README.md

 Project Description

The objective of this task is to apply SQL JOIN operations on real-world-style academic data. It involves retrieving insights by combining two related tables — one for students and another for courses.

This project helps solidify understanding of:
- Data relationships
- Various JOIN operations (INNER, LEFT, RIGHT, FULL)
- Handling NULLs in queries
- Query logic construction and result analysis

  Tables Used

`Students`

| StudentID | StudentName | CourseID |
|-----------|-------------|----------|
| 1         | Aarav       | 101      |
| 2         | Bianca      | 102      |
| 3         | Chetan      | 103      |
| ...       | ...         | ...      |
| 12        | Leela       | 103      |

 `Courses`

| CourseID | CourseName          |
|----------|---------------------|
| 101      | Data Structures     |
| 102      | Web Development     |
| 103      | SQL & Databases     |
| 104      | Operating Systems   |
| 105      | Computer Networks   |
| 106      | Machine Learning    |
| 107      | Cybersecurity       |
| 108      | Cloud Computing     |


 SQL Queries Demonstrated

--INNER JOIN
sql
SELECT S.StudentName, C.CourseName
FROM Students S
INNER JOIN Courses C ON S.CourseID = C.CourseID;

-Returns only students enrolled in a course (matched CourseIDs).*

--LEFT JOIN
sql
SELECT S.StudentName, C.CourseName
FROM Students S
LEFT JOIN Courses C ON S.CourseID = C.CourseID;

-Returns all students. CourseName will be NULL for those not enrolled.*

 --RIGHT JOIN
 sql
 SELECT S.StudentName, C.CourseName
 FROM Students S
 RIGHT JOIN Courses C ON S.CourseID = C.CourseID;

-Returns all courses. StudentName will be NULL for courses without enrolled students.*


--FULL OUTER JOIN (via UNION)
sql
SELECT S.StudentName, C.CourseName
FROM Students S
LEFT JOIN Courses C ON S.CourseID = C.CourseID
UNION
SELECT S.StudentName, C.CourseName
FROM Students S
RIGHT JOIN Courses C ON S.CourseID = C.CourseID;

-Returns all students and all courses, matched or unmatched.*



- How to Use

1. Open MySQL Workbench or your preferred SQL IDE
2. Execute `sql_task01.sql` to create tables and insert data
3. Run JOIN queries individually to see results



- Learning Outcomes

- Solid understanding of JOIN operations
- Real-world data modeling experience
- Ability to analyze mismatches (NULL handling)
- Confidence in writing professional SQL


 About the Author
 VISHWAS SONAR
 Aspiring Data Analyst  
 CODTECH Internship Participant

 Files Included
- `sql_task01.sql` — Complete SQL script for the project
- `README.md` — This documentation

-Contact:
-Mail me at - sonarvishwas24@gmail.com

