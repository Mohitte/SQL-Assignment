Create database worker;
use worker;
CREATE TABLE emp (
    eno INT PRIMARY KEY,
    ename VARCHAR(255) NOT NULL,
    bdate DATE,
    title VARCHAR(255),
    salary DECIMAL(10, 2),
    dno VARCHAR(10)
);
CREATE TABLE proj (
    pno INT PRIMARY KEY,
    pname VARCHAR(255) NOT NULL,
    budget DECIMAL(10, 2),
    dno VARCHAR(10)
);
CREATE TABLE dept (
    dno VARCHAR(10) PRIMARY KEY,
    dname VARCHAR(255) NOT NULL,
    mgreno INT
);
CREATE TABLE workson (
    eno INT,
    pno INT,
    resp VARCHAR(255),
    hours DECIMAL(5, 2),
    FOREIGN KEY (eno) REFERENCES emp(eno),
    FOREIGN KEY (pno) REFERENCES proj(pno)
);

-- 1) Write an SQL query that returns the project number and name for projects with a budget greater than $100,000.
SELECT pno, pname
FROM proj
WHERE budget > 100000;

-- 2) Write an SQL query that returns all works on records where hours worked is less than 10 and the responsibility is 'Manager'.
SELECT *
FROM workson
WHERE hours < 10 AND resp = 'Manager';

-- 3) Write an SQL query that returns the employees (number and name only) who have a title of 'EE' or 'SA' and make more than $35,000.
SELECT eno, ename
FROM emp
WHERE (title = 'EE' OR title = 'SA') AND salary > 35000;

-- 4) Write an SQL query that returns the employees (name only) in department 'D1' ordered by decreasing salary.
SELECT ename
FROM emp
WHERE dno = 'D1'
ORDER BY salary DESC;

-- 5) Write an SQL query that returns the departments (all fields) ordered by ascending department name.
SELECT *
FROM dept
ORDER BY dname ASC;

