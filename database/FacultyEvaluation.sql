CREATE DATABASE FacultyEval;
USE FacultyEval;

CREATE TABLE Teachers(
	ID INT PRIMARY KEY,
	Teacher_Name varchar(40),
	Designation varchar(50),
	CHECK (Designation IN ('Professor', 'Lecturer', 'Lab Instructor', 'Assistant Professor')),
	DeptID INT
);

CREATE TABLE Students(
	Roll_No varchar(10) PRIMARY KEY,
	Student_Name varchar(50),
	Student_Batch varchar(10),
	DeptID INT
);