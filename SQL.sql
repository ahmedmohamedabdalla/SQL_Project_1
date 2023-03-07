/*
Project
Suppose there is a university and we want to create a central database to include all the information of professors,students and subjects, 
knowing that the following information must be stored for each student :
1- student serial number.
2- student name.
3- date of birth.
4- student gender.
5- enrollment date.
6- student email.
7- academic level. 
8- section 
9- cumulative average of the student

Professors information as follows
1- the Professors serial number.
2- the teacher’s name.
3- the date of birth.
4-  the teacher’s gender.
5-  the teacher’s email.
6- the office number.
and the material information as follows (the serial number of the course, the name of the course).
*/
-- Database Called University it is Created.
CREATE DATABASE University;

-- I created a table for students it includes all information about the students.
CREATE TABLE Students (
Student_Id INT NOT NULL PRIMARY KEY,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) ,
Birth_of_Date DATE,
Gender VARCHAR(50),
Join_Date DATE ,
Gmail CHAR(255),
Level INT,
Section VARCHAR(255)
);

-- I created a table for Professors it includes all information about the Professors.
CREATE TABLE Professors (
Professors_Id INT NOT NULL PRIMARY KEY,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) ,
Birth_of_Date DATE,
Gender VARCHAR(255),
Gmail CHAR(255),
Office_number INT
);

CREATE TABLE Subjects (
Subjects_Id INT NOT NULL PRIMARY KEY,
Subject_Name VARCHAR(100) NOT NULL
);

-- I created a new column for GPA.
ALTER TABLE Students
ADD COLUMN GPA double;
truncate table Professors;
drop table Professors;
-- This is Data will insert into Tables in Database.
INSERT INTO Students VALUES (100, "Ahmed", "Mohamed","2001-01-17","Male","2019-10-21","Ahmed201@gmail.com", 4 ,"CS", 3.0),
							(205, "Omar", "Ali","2003-07-15","Male","2019-09-21","omar20@gmail.com", 2 ,"CS", 2.67),
							(310, "Mostafa", "Mohamed" ,"2002-09-12", "Male","2019-09-21", "Ahmed201@yahoo.com" , 3,"CS",2.87),
                            (106 ,"Rana","Ahmed" ,"2001-11-17","Female" , "2019-09-21" , "Rana89@yahoo.com",4,"IS", 2.90),
                            (120,"Mona","Mohamed","2001-11-22", "Female"  ,"2019-09-21", "mona89@gmail.com", 4 , "CS" ,3.55);
                            
INSERT INTO Professors VALUES (10, "Ahmed", "Mohamed","1976-01-17","Male","Ahmed201@gmail.com", 2),
							(11, "Omar", "Abd-Alaziz","1990-07-15","Male","omar@gmail.com", 2 ),
							(12, "Mahmoud", "Mohamed" ,"1985-08-15", "Male", "Ahmed201@yahoo.com" , 1),
                            (13 ,"Salah","Ahmed" ,"1987-11-17","Male" , "SalahMO@yahoo.com",4);
                            
INSERT INTO  Subjects VALUES (200,"Programming_1"), 
                             (201,"Programming_2"),
                             (300,"Machine Learning");
							
SELECT AVG(GPA) FROM Students as Mean_GPA;
SELECT DISTINCT(Subject_name) from Subjects AS Unique_Subjects;
SELECT COUNT(distinct(First_Name)) from Students;
