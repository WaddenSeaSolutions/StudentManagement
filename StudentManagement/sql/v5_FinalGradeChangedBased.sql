-- Step 1:
ALTER TABLE Enrollment ADD COLUMN FinalGrade VARCHAR(2);

-- Step 2:
UPDATE Enrollment SET FinalGrade = Grade;

-- Step 3:
ALTER TABLE Enrollment DROP COLUMN Grade;