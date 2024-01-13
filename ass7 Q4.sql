CREATE TABLE student 
(
    SID	VARCHAR(512),
    NAME	VARCHAR(512),
    LOCATION	VARCHAR(512)
);

INSERT INTO student (SID, NAME, LOCATION) VALUES
	('1', 'Ajith', 'Chennai'),
	('2', 'Ramya', 'Pune'),
	('3', 'Divya', 'Delhi'),
	('4', 'Kumar', 'Goa'),
	('5', 'Sanjay', 'Kolkata'),
	('6', 'Jerry', 'Nagpur'),
	('null', 'null', 'null');
    
CREATE TABLE projects 
(
    id	INT,
    project	VARCHAR(512)
);

INSERT INTO projects (id, project) VALUES
	('2', 'python'),
	('3', 'web'),
	('3', 'sql'),
	('4', 'python'),
	('2', 'java'),
	('null', 'null'),
	('7', 'Numpy'),
	('9', 'panda');
    
-- Inner join
SELECT s.NAME, s.LOCATION, p.project
FROM student s
INNER JOIN projects p ON s.SID = p.id;

-- Left join
SELECT s.NAME, s.LOCATION, p.project
FROM student s
LEFT JOIN projects p ON s.SID = p.id;

-- Right join
SELECT s.NAME, s.LOCATION, p.project
FROM student s
RIGHT JOIN projects p ON s.SID = p.id;

-- Cross join
SELECT s.NAME, s.LOCATION, p.project
FROM student s
CROSS JOIN projects p;
