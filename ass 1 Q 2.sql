create database emp;
use emp;
create table Employe
(Dr_ID bigint primary key,
Dr_Name varchar(50),
Dept varchar(50));

insert into Employe (Dr_ID,Dr_Name,Dept) 
values (1011,"Arjun A","Ortho"),
(1022,"Varun M","paediatrics"),
(1033,"Manhor","ENT");

select * from Employe;

update Employe
set Dr_ID=1044 where Dr_Name="Manhor";

delete from Employe where Dr_Name="Arjun A";

Alter table Employe add salary bigint;

update Employe
set salary=50000;