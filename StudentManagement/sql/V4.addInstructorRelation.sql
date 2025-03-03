CREATE DATABASE University;
USE University;

CREATE TABLE Student (
                         Id INT AUTO_INCREMENT PRIMARY KEY,
                         FirstName VARCHAR(50) NOT NULL,
                         LastName VARCHAR(50) NOT NULL,
                         Email VARCHAR(100) UNIQUE NOT NULL,
                         EnrollmentDate DATE NOT NULL,
                         DateOfBirth DATE NOT NULL
);

CREATE TABLE Course (
                        Id INT AUTO_INCREMENT PRIMARY KEY,
                        Title VARCHAR(100) NOT NULL,
                        Credits INT NOT NULL,
                        InstructorId INT NULL, -- New column for foreign key reference
                        FOREIGN KEY (InstructorId) REFERENCES Instructor(Id) ON DELETE SET NULL
);

CREATE TABLE Enrollment (
                            Id INT AUTO_INCREMENT PRIMARY KEY,
                            StudentId INT,
                            CourseId INT,
                            Grade VARCHAR(2),
                            FOREIGN KEY (StudentId) REFERENCES Student(Id) ON DELETE CASCADE,
                            FOREIGN KEY (CourseId) REFERENCES Course(Id) ON DELETE CASCADE
);

CREATE TABLE Instructor (
                            Id INT AUTO_INCREMENT PRIMARY KEY,
                            FirstName VARCHAR(50) NOT NULL,
                            LastName VARCHAR(50) NOT NULL,
                            Email VARCHAR(100) UNIQUE NOT NULL,
                            HireDate DATE NOT NULL
);
