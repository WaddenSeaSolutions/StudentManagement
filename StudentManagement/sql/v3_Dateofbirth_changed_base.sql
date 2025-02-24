-- Migration script to add DateOfBirth column to Student table
ALTER TABLE Student
    ADD DateOfBirth DATE NOT NULL;