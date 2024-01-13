create database ss;
use ss;
CREATE TABLE SALESMAN (
    SNO VARCHAR(3) PRIMARY KEY,
    SNAME VARCHAR(255) NOT NULL,
    SALARY DECIMAL(10, 2),
    BONUS DECIMAL(10, 2),
    DATE_OF_JOIN DATE
);
INSERT INTO SALESMAN (SNO, SNAME, SALARY, BONUS, DATE_OF_JOIN)
VALUES
    ('A01', 'Beena Mehta', 30000, 45.23, '2019-10-29'),
    ('A02', 'K. L. Sahay', 50000, 25.34, '2018-03-13'),
    ('B03', 'Nisha Thakkar', 30000, 35.00, '2017-03-18'),
    ('B04', 'Leela Yadav', 80000, NULL, '2018-12-31'),
    ('C05', 'Gautam Gola', 20000, NULL, '1989-01-23'),
    ('C06', 'Trapti Garg', 70000, 12.37, '1987-06-15'),
    ('D07', 'Neena Sharma', 50000, 27.89, '1999-03-18');
    
select * from SALESMAN;

-- Display salesman name and bonus after rounding off to zero decimal places.
SELECT SNAME, ROUND(BONUS, 0) AS RoundedBonus
FROM SALESMAN;

-- b) Display the position of occurrence of the string “ta” in salesman names.
SELECT SNAME, INSTR(SNAME, 'ta') AS PositionOfTa
FROM SALESMAN;

-- Display the four characters from salesman name starting from second character.
SELECT SNAME, SUBSTRING(SNAME, 2, 4) AS SubstringFromSecondChar
FROM SALESMAN;

-- Display the month name for the date of join of salesman
SELECT SNAME, MONTHNAME(DATE_OF_JOIN) AS JoinMonth
FROM SALESMAN;

-- Display the name of the weekday for the date of join of salesman
SELECT SNAME, DAYNAME(DATE_OF_JOIN) AS JoinWeekday
FROM SALESMAN;



