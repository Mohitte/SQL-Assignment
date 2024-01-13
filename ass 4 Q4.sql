CREATE DATABASE Sport;
USE Sport;

CREATE TABLE TEAM (
    TeamID INT NOT NULL,
    TeamName VARCHAR(500) NOT NULL,
    PRIMARY KEY (TeamID)
);
DESCRIBE TEAM;

INSERT INTO TEAM (TeamID, TeamName) VALUES
    (1, 'Team Titan'),
    (2, 'Team Rockers'),
    (3, 'Team Magnet'),
    (4, 'Team Hurricane');

SELECT * FROM TEAM;

