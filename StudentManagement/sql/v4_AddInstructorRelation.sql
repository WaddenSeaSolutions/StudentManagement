CREATE TABLE Instructor (
                            Id INT PRIMARY KEY IDENTITY(1,1),
                            FirstName NVARCHAR(50) NOT NULL,
                            LastName NVARCHAR(50) NOT NULL,
                            Email NVARCHAR(100) NOT NULL,
                            HireDate DATE NOT NULL
);

ALTER TABLE Course
    ADD InstructorId INT NULL;

ALTER TABLE Course
    ADD CONSTRAINT FK_Course_Instructor
        FOREIGN KEY (InstructorId) REFERENCES Instructor(Id);
