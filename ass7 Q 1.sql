CREATE TABLE Buildings (
    Building_name VARCHAR(255) PRIMARY KEY,
    Capacity INT
);

INSERT INTO Buildings (Building_name, Capacity)
VALUES
    ('1e', 24),
    ('1w', 32),
    ('2e', 16),
    ('2w', 20);

CREATE TABLE Employees (
    Role VARCHAR(255) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Building VARCHAR(255),
    Years_employed INT,
    FOREIGN KEY (Building) REFERENCES Buildings(Building_name)
);

INSERT INTO Employees (Role, Name, Building, Years_employed)
VALUES
    ('Engineer', 'Becky A.', '1e', 4),
    ('Engineer', 'Dan B.', '1e', 2),
    ('Engineer', 'Sharon F.', '1e', 6),
    ('Engineer', 'Dan M.', '1e', 4),
    ('Engineer', 'Malcom S.', '1e', 1),
    ('Artist', 'Tylar S.', '2w', 2);


-- 1.Find the list of all buildings that have employees
SELECT DISTINCT B.Building_name
FROM Buildings B
JOIN Employees E ON B.Building_name = E.Building;

-- 2.Find the list of all buildings and their capacity.
SELECT Building_name, Capacity
FROM Buildings;

-- 3.List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT  DISTINCT E.Role, B.Building_name
FROM Buildings B
LEFT JOIN Employees E ON B.Building_name = E.Building;

