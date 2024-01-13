create database Sports;
use Sports;
create table TEAM
(
Student_id varchar(30) primary key,
Stuent_name varchar(50),
Department varchar(50) not null,
Team_Name varchar(40) not null,
constraint department_check check (Department in ("Computer Science","Information Technology"))
);

insert into TEAM (Student_id,Stuent_name,Department,Team_Name) values 
(1001,"Nikhil P","Information Technology","Team Titan"),
(1002,"Jayesh k","Computer Science","Team Rockers"),
(1003,"Rahul s","Computer Science","Team Magnet"),
(1004,"Amol N","Information Technology","Team Hurricane");

select * from TEAM;
