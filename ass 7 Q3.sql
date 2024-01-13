CREATE TABLE emp (
    id INT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(dept_id)
);

CREATE TABLE dept (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);

-- Insert data "dept" table
INSERT INTO dept (dept_id, dept_name) VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'Engineering'),
(4, 'IT'),
(5, 'Management');

-- Insert data "emp" table
INSERT INTO emp (id, employee_name, dept_id) VALUES
(1, 'John', 4),
(2, 'Sid', 1),
(3, 'Payal', 5),
(4, 'Tushar', 3),
(5, 'Manoj', NULL);

SELECT emp.id, emp.employee_name, emp.dept_id, dept.dept_name
FROM emp
LEFT JOIN dept ON emp.dept_id = dept.dept_id;
