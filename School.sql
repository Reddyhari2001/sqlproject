CREATE DATABASE SIMPROJECTS

USE SIMPROJECTS

-- Create the STUDENTS table
CREATE TABLE STUDENTS (
    ROLLNO INT PRIMARY KEY IDENTITY(1,1),
    STUDENTNAME VARCHAR(20),
    GENDER CHAR(1),
    DATEOFBIRTH DATE
);

-- Create the TEACHERS table
CREATE TABLE TEACHERS (
    T_ID INT PRIMARY KEY IDENTITY(1,1),
    T_NAME VARCHAR(20)
);

-- Create the SUBJECTS table
CREATE TABLE SUBJECTS (
    SUB_ID INT PRIMARY KEY IDENTITY(1,1),
    SUB_NAME VARCHAR(20)
);

-- Insert values into the STUDENTS table
INSERT INTO STUDENTS (STUDENTNAME, GENDER, DATEOFBIRTH)
VALUES 
    ('John Doe', 'M', '2000-01-15'),
    ('Jane Smith', 'F', '2001-03-22'),
    ('Michael Johnson', 'M', '1999-11-05'),
    ('Emily Davis', 'F', '2002-07-10'),
    ('Robert Miller', 'M', '2003-05-18'),
    ('Olivia Brown', 'F', '2000-09-30'),
    ('William Wilson', 'M', '2001-12-08'),
    ('Sophia Taylor', 'F', '2002-04-25'),
    ('David Anderson', 'M', '2003-08-12'),
    ('Ava Martinez', 'F', '2000-06-14'),
    ('James Harris', 'M', '2001-02-03'),
    ('Emma Clark', 'F', '1999-10-20'),
    ('Daniel Turner', 'M', '2002-11-07'),
    ('Grace White', 'F', '2003-01-28'),
    ('Matthew Lee', 'M', '2000-04-09'),
    ('Chloe Garcia', 'F', '2001-07-17'),
    ('Ethan Rodriguez', 'M', '2002-09-05'),
    ('Lily Adams', 'F', '2003-03-12'),
    ('Christopher Brown', 'M', '2000-12-23'),
    ('Mia Wilson', 'F', '2001-08-19');

-- Verify the inserted data
SELECT * FROM STUDENTS;

-- Insert values into the TEACHERS table
INSERT INTO TEACHERS (T_NAME)
VALUES 
    ('Mr. Smith'),
    ('Mrs. Johnson'),
    ('Dr. Davis'),
    ('Miss Miller'),
    ('Professor Wilson'),
    ('Ms. Taylor'),
    ('Mr. Anderson'),
    ('Dr. Martinez');

-- Verify the inserted data
SELECT * FROM TEACHERS;

-- Insert values into the SUBJECTS table
INSERT INTO SUBJECTS (SUB_NAME)
VALUES 
    ('Mathematics'),
    ('English'),
    ('Science'),
    ('History'),
    ('Computer Science'),
    ('Physics'),
    ('Biology'),
    ('Literature');

-- Verify the inserted data
SELECT * FROM SUBJECTS;


CREATE INDEX idx_rollno ON STUDENTS (ROLLNO);

CREATE INDEX idx_t_id ON TEACHERS (T_ID)
CREATE INDEX idx_sub_id ON SUBJECTS (SUB_ID);
