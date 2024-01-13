create database new;
use new;
CREATE TABLE employee 
(
    ID	INT,
    NAME	VARCHAR(512),
    DEPARTMENT	VARCHAR(512),
    SALARY	INT,
    LOCATION	VARCHAR(512)
);

INSERT INTO employee (ID, NAME, DEPARTMENT, SALARY, LOCATION) VALUES
	('1', 'Jay', 'HR', '5000', 'Chennai'),
	('2', 'Yash', 'Management', '7000', 'Pune'),
	('3', 'Annand', 'Training', '6000', 'Chennai'),
	('4', 'Ruhi', 'Sales', '4000', 'Delhi'),
	('5', 'Pratik', 'Admin', '3000', NULL);

select * from employee;

-- Display details employees whose name start with P 
select * from employee where NAME like "p%";

-- Display names of employees getting paid in range 3000-5000
select Name,SALARY from employee where SALARY between 3000 and 5000;

-- Display all records in the decreasing order of salary
select * from employee order by SALARY desc;

-- Display name as ENAME and Department As Dept for the first 2 records
select NAME as ENAME, DEPARTMENT as Dept from employee limit 2;

-- Display details employees whose name has 'a' as second last letter
select * from employee where NAME like "%a_";