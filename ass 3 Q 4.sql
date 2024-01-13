CREATE TABLE students 
(
    Stu_id	VARCHAR(512),
    Stu_name	VARCHAR(512),
    Stu_address	VARCHAR(512),
    Stu_phno	BIGINT,
    Stu_percentage	INT
);

INSERT INTO students (Stu_id, Stu_name, Stu_address, Stu_phno, Stu_percentage) VALUES
	('1', 'Rahul', 'Agra', '9557806625', '85'),
	('2', 'Ankit', 'Delhi', '8855664471', '75'),
	('3', 'Shailendra', 'Noida', '7213457896', '92');
    
select * from students;

-- student who scored more then 80%
select Stu_id, Stu_name, Stu_address, Stu_percentage from students where Stu_percentage>80;

-- update rahul marks by 2
update students
set Stu_percentage = 87 where Stu_name="Rahul";

-- delete the whole record of ankit
delete from students
where Stu_name="Ankit";