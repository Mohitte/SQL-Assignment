create database EMPDEPENDENT;
use EMPDEPENDENT;
-- EMPLOYEE table
CREATE TABLE EMPLOYEE (
    AadhaarNo INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    Department VARCHAR(255),
    EmpID INT UNIQUE NOT NULL
);

-- DEPENDENT table
CREATE TABLE DEPENDENT (
    EmpID INT,
    DependentName VARCHAR(255) NOT NULL,
    Relationship VARCHAR(50) NOT NULL,
    FOREIGN KEY (EmpID) REFERENCES EMPLOYEE(EmpID)
);
select * from EMPLOYEE;
select * from DEPENDENT;

-- Find the names of employees with their dependent name
SELECT E.Name AS EmployeeName, D.DependentName
FROM EMPLOYEE E
LEFT JOIN DEPENDENT D ON E.EmpID = D.EmpID;

-- Find employee details working in a department, say,‘PRODUCTION’.
SELECT *
FROM EMPLOYEE
WHERE Department = 'PRODUCTION';

-- Find employee names having no dependent
SELECT Name
FROM EMPLOYEE
WHERE EmpID NOT IN (SELECT DISTINCT EmpID FROM DEPENDENT);

-- Find names of employees working in a department,say,‘SALES’ and having exactly two dependents.
SELECT 
    E.Name AS EmployeeName
FROM
    EMPLOYEE E
        JOIN
    DEPENDENT D ON E.EmpID = D.EmpID
WHERE
    E.Department = 'SALES'
GROUP BY E.EmpID
HAVING COUNT(DISTINCT D.DependentName) = 2;


