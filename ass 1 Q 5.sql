create database venue;
use venue;
create table emp
(ename varchar(25),
dept char(30),
salary float(8,2),
mobnum bigint
);
select*from emp;

alter table emp
drop mobnum;

alter table emp
add HRA char;

alter table emp
modify dept varchar(30); 

alter table emp
add mobnum bigint after salary;

alter table emp
change column mobnum contact bigint;

desc emp;

describe venue.emp;
