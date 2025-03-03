ALTER TABLE Department
ADD CONSTRAINT FK_DepartmentHead FOREIGN KEY (DepartmentHeadId) REFERENCES Instructor(Id);
