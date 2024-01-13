create table emp
(eid int primary key,
ename varchar(50),
esalary float(8,2),
email varchar(90),
dob varchar(50));

insert into emp (eid,ename,esalary,email,dob) values
(1,"XYZ",3000.89,"xyz@gmail.com","1990-08-30"),(2,"ABC",2300.90,"abc@gmail.com","1980-03-21");

select* from emp;

insert into emp (eid,ename,esalary,email,dob) values
(3,"MNO",3240,"mno@gmail.com","1997-08-31"),(4,"PQR",2000.92,"pqr@gmail.com","1992-05-11");

update emp
set esalary=4000.68, dob="1993-08-30" where eid=1;

truncate table emp;