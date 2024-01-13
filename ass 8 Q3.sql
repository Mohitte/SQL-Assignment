create database new_std;
use new_std;
CREATE TABLE student_reg 
(
    sid	INT,
    name	VARCHAR(512),
    per	DOUBLE,
    city	VARCHAR(512)
);

INSERT INTO student_reg (sid, name, per, city) VALUES
	('1', 'Harry', '95.26', 'Pune'),
	('2', 'Mac', '98.45', 'Nashik'),
	('3', 'Rox', '75.69', 'Nagar'),
	('4', 'shree', '85.65', 'Thane'),
	('5', 'Seema', '89.45', 'Mumbai');
    
CREATE TABLE student_course 
(
    cid	INT,
    sid	VARCHAR(512),
    cname	VARCHAR(512),
    branch	VARCHAR(512)
);

INSERT INTO student_course (cid, sid, cname, branch) VALUES
	('1', '1', 'Web designing', 'Mumbai'),
	('2', '2', 'Python', 'Pune'),
	('3', '4', 'PHP', 'Thane'),
	('4', '5', 'DBMS', 'Nashik'),
	('3', '1', 'PHP', 'Thane');    
    
select * from student_reg;
select * from student_course;

-- cross join
SELECT distinct * 
FROM student_reg
CROSS JOIN student_course;

-- inner join 
SELECT sr.sid, sr.name, sr.per, sr.city, sc.cname, sc.branch
FROM student_reg sr
INNER JOIN student_course sc ON sr.sid = sc.sid;
