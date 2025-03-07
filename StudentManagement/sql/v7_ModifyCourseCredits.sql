CREATE DATABASE University;
USE University;

-- Student table
CREATE TABLE Student (
     Id INT AUTO_INCREMENT PRIMARY KEY,
     FirstName VARCHAR(50) NOT NULL,
     LastName VARCHAR(50) NOT NULL,
     Email VARCHAR(100) UNIQUE NOT NULL,
     EnrollmentDate DATE NOT NULL
);

-- Course table
CREATE TABLE Course (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Credits decimal(5, 2) NOT NULL
);

-- Enrollment table (between Student and Course)
CREATE TABLE Enrollment (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    StudentId INT,
    CourseId INT,
    Grade VARCHAR(2),
    FOREIGN KEY (StudentId) REFERENCES Student(Id) ON DELETE CASCADE,
    FOREIGN KEY (CourseId) REFERENCES Course(Id) ON DELETE CASCADE
);

-- Instructor table
CREATE TABLE Instructor (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL
);

-- Department table (Ensuring DepartmentHead is an Instructor)
CREATE TABLE Department (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Budget INT,
    StartDate DATE,
    DepartmentHead INT,
    FOREIGN KEY (DepartmentHead) REFERENCES Instructor(Id) ON DELETE SET NULL
);
