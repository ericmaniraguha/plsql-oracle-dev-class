-- Table to store information about different countries
CREATE TABLE Countries (
    Country_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,  -- Unique identifier for each country
    Country_Name VARCHAR2(100) NOT NULL UNIQUE,                     -- Name of the country
    Country_Code VARCHAR2(10) NOT NULL UNIQUE,                      -- Unique code for the country
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP                   -- Timestamp of record creation
);

-- Table to hold data about various departments within the organization
CREATE TABLE Departments (
    Department_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, -- Unique identifier for each department
    Department_Name VARCHAR2(100) NOT NULL,                           -- Name of the department
    Location VARCHAR2(100),                                           -- Physical location of the department
    Country_ID NUMBER,                                               -- Foreign key referencing Countries table
    FOREIGN KEY (Country_ID) REFERENCES Countries(Country_ID)       -- Establishing a relationship with the Countries table
);

-- Table defining different roles or positions available within the organization
CREATE TABLE Roles (
    Role_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,     -- Unique identifier for each role
    Role_Name VARCHAR2(100) NOT NULL,                               -- Name of the role
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP                  -- Timestamp of record creation
);



-- Table to store information about managers and their associated departments
CREATE TABLE Managers (
    Manager_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,  -- Unique identifier for each manager
    Employee_ID NUMBER UNIQUE,                                       -- Foreign key referencing the Employees table (one-to-one)
    Department_ID NUMBER,                                           -- Foreign key referencing the Departments table
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID),     -- Establishing a relationship with the Employees table
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID) -- Establishing a relationship with the Departments table
);

-- Table containing records of employees
CREATE TABLE Employees (
    Employee_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,  -- Unique identifier for each employee
    First_Name VARCHAR2(50) NOT NULL,                                -- Employee's first name
    Last_Name VARCHAR2(50) NOT NULL,                                 -- Employee's last name
    Email VARCHAR2(100) UNIQUE NOT NULL,                             -- Employee's email (must be unique)
    Phone_Number VARCHAR2(15),                                       -- Employee's phone number
    Address VARCHAR2(255),                                           -- Employee's address
    Hire_Date DATE DEFAULT SYSDATE,                                  -- Date when the employee was hired
    Department_ID NUMBER,                                           -- Foreign key referencing the Departments table
    Role_ID NUMBER,                                                 -- Foreign key referencing the Roles table
    Salary NUMBER,                                                  -- Employee's salary
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID), -- Establishing a relationship with the Departments table
    FOREIGN KEY (Role_ID) REFERENCES Roles(Role_ID)                 -- Establishing a relationship with the Roles table
);


-- Alter the Employees table to add a Bonus column

ALTER TABLE Employees
ADD Bonus NUMBER DEFAULT 0;  -- Set a default bonus value of 0


-- Table to track allowances for employees
CREATE TABLE Allowances (
    Allowance_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,  -- Unique identifier for each allowance record
    Role_ID NUMBER,                                                   -- Foreign key referencing the Roles table
    Allowance_Amount NUMBER NOT NULL,                                 -- Amount of the allowance
    Effective_Date DATE DEFAULT SYSDATE,                              -- Date when the allowance became effective
    Is_Applicable CHAR(1) DEFAULT 'Y' CHECK (Is_Applicable IN ('Y', 'N')), -- Indicator if allowance is applicable
    Comments VARCHAR2(255),                                          -- Additional comments about the allowance
    FOREIGN KEY (Role_ID) REFERENCES Roles(Role_ID)                  -- Establishing a relationship with the Roles table
);


-- Table to record attendance status of employees
CREATE TABLE Attendance (
    Attendance_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, -- Unique identifier for each attendance record
    Employee_ID NUMBER,                                             -- Foreign key referencing the Employees table
    Attendance_Date DATE NOT NULL,                                 -- Date of attendance
    Status VARCHAR2(20) CHECK (Status IN ('Present', 'Absent', 'Leave')), -- Attendance status (Present, Absent, Leave)
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)     -- Establishing a relationship with the Employees table
);




