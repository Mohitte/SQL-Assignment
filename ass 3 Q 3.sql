create database work;
use work;
CREATE TABLE worker 
(
    ID	INT,
    NAME	VARCHAR(512),
    DEPARTMENT	VARCHAR(512),
    SALARY	INT,
    LOCATION	VARCHAR(512)
);

INSERT INTO worker (ID, NAME, DEPARTMENT, SALARY, LOCATION) VALUES
	('1', 'Jay', 'HR', '5000', 'Chennai'),
	('2', 'Yash', 'Management', '7000', 'Pune'),
	('3', 'Annand', 'Training', '6000', 'Chennai'),
	('4', 'Ruhi', 'Sales', '4000', 'Delhi'),
	('5', 'Pratik', 'Admin', '3000', NULL);
    
select * from worker;

select Name as worker_name from worker;

select distinct DEPARTMENT from worker;