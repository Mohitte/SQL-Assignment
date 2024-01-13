create database emp;
use emp;
create table employee
(Employee_ID varchar(50) primary key,
FullName varchar(60),
LastName Varchar(60),
Salary bigint);

select * from employee;

alter table employee
rename to empinfo;

select * from empinfo;
desc empinfo;