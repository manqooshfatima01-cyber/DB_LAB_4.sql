CREATE DATABASE EDUCATION;
USE EDUCATION;

CREATE TABLE STUDENTS (
StudentID     INT PRIMARY KEY,
Name          VARCHAR(50),
Department    VARCHAR(50),
GPA           DECIMAL(3,2),
Advisor       VARCHAR(50),
CreditsCompleted INT,
Semester      INT
);

INSERT INTO STUDENTS(StudentID, Name, Department, GPA, Advisor, CreditsCompleted, Semester)
VALUES
(1,'Ahmed','Computer Science',3.80,'Dr. Khan',90,6),
(2,'Ali','Electrical Engineering',3.20,'Dr. Raza',85,5),
(3,'Ayesha','Computer Science',3.95,'Dr.Khan',95,6),
(4,'Sara','BBA',3.60,'Dr.Ali',70,4),
(5,'Usman','Electrical Engineering',3.40,'Dr.Raza',88,6),
(6,'Hassan','Computer Science',2.90,'Dr.Khan',80,5),
(7,'Fatima','BBA',3.75,'Dr.Ali',75,6),
(8,'Zain','Computer Science',3.50,'Dr.Khan',92,6),
(9,'Noor','Electrical Engineering',3.10,'Dr.Raza',60,4),
(10,'Bilal','BBA',2.40,'Dr.Ali', 55,3),
(11,'Hina','Computer Science',3.85,'Dr.Khan',100,6),
(12,'Omer','Electrical Engineering',3.70,'Dr.Raza',78,5);



UPDATE STUDENTS
SET GPA = GPA + 0.2
WHERE Department = 'Computer Science';

UPDATE STUDENTS 
SET ADVISOR = 'Dr.Ahmed'
WHERE Department = 'Electrical Engineering';

UPDATE STUDENTS
SET Department = 'Business Administration'
WHERE Department = 'BBA'; 

UPDATE STUDENTS
SET CreditsCompleted = CreditsCompleted + 3
WHERE Semester = 6;

UPDATE STUDENTS
SET GPA = GPA - 0.1
WHERE GPA > 3.9;

SELECT Department, COUNT(*) AS Total_Students
FROM STUDENTS
GROUP BY Department;

SELECT Semester, AVG(GPA) AS Average_GPA
FROM STUDENTS
GROUP BY Semester;

SELECT Department,
       MAX(GPA) AS Max_GPA,
       MIN(GPA) AS Min_GPA
FROM Students
GROUP BY Department;

SELECT Department, SUM(CreditsCompleted) AS Total_Credits
FROM STUDENTS
GROUP BY Department;

SELECT Advisor, AVG(GPA) AS Average_GPA
FROM STUDENTS
GROUP BY Advisor;

SELECT Department, AVG(GPA) AS Average_GPA
FROM STUDENTS
GROUP BY Department 
HAVING AVG(GPA) > 3.5;

SELECT Semester, COUNT(*) AS Total_Students
FROM STUDENTS
GROUP BY Semester
HAVING COUNT(*) > 10;

SELECT Advisor, COUNT(*) AS Total_Students
FROM STUDENTS
GROUP BY Advisor
HAVING COUNT (*) > 5;

SELECT Department, SUM(CreditsCompleted) AS Total_Credits
FROM STUDENTS
GROUP BY Department
HAVING SUM(CreditsCompleted) >500;

SELECT Semester, AVG(GPA) AS Average_GPA
FROM STUDENTS
GROUP BY Semester 
HAVING AVG(GPA) < 2.5;






