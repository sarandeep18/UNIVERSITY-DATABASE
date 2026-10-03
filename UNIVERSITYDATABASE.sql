-- Create DEPARTMENT table (Referenced by other tables
CREATE DATABASE UNIVERSITY
USE UNIVERSITY;
CREATE TABLE Department (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50),
    HOD_Name VARCHAR(50),
    Building VARCHAR(50)
);

-- Create STUDENT table
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Gender VARCHAR(10),
    DOB DATE,
    Phone BIGINT,
    Email VARCHAR(100),
    Address VARCHAR(100),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

-- Create FACULTY table
CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Faculty_Name VARCHAR(50),
    Qualification VARCHAR(50),
    Designation VARCHAR(30),
    Phone BIGINT,
    Salary DECIMAL(10,2),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

-- Create NON-TEACHING STAFF table
CREATE TABLE Non_Teaching_Staff (
    Staff_ID INT PRIMARY KEY,
    Staff_Name VARCHAR(50),
    Position VARCHAR(50),
    Phone BIGINT,
    Salary DECIMAL(10,2),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

-- Create WORKERS table
CREATE TABLE Workers (
    Worker_ID INT PRIMARY KEY,
    Worker_Name VARCHAR(50),
    Work_Type VARCHAR(50),
    Phone BIGINT,
    Salary DECIMAL(10,2)
);

-- Create COURSE table
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Credits INT,
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

-- Create CLASSROOM table
CREATE TABLE Classroom (
    Room_ID INT PRIMARY KEY,
    Room_Number VARCHAR(20),
    Capacity INT,
    Block VARCHAR(20)
);
SHOW TABLES IN UNIVERSITY
