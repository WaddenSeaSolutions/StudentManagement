CREATE TABLE Department (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Budget INT,
    StartDate DATE,
    DepartmentHeadId INT UNIQUE 
);

ALTER TABLE Department
ADD CONSTRAINT FK_DepartmentHead FOREIGN KEY (DepartmentHeadId) REFERENCES Instructor(Id);
