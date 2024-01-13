CREATE TABLE Uniform (
    Ucode INT PRIMARY KEY,
    Uname VARCHAR(255) NOT NULL,
    Ucolor VARCHAR(255) NOT NULL
);

INSERT INTO Uniform (Ucode, Uname, Ucolor) VALUES
(1, 'Shirt', 'White'),
(2, 'Pant', 'Grey'),
(3, 'Tie', 'Blue');

CREATE TABLE Cost (
    Ucode INT,
    Size VARCHAR(1),
    Price DECIMAL(10, 2)
);

INSERT INTO Cost (Ucode, Size, Price) VALUES
(1, 'L', 580),
(1, 'M', 500),
(2, 'L', 890),
(2, 'M', 810);

-- using where clause
SELECT U.UCode, U.UName, U.UColor, C.Size, C.Price
FROM UNIFORM U, COST C
WHERE U.UCode = C.UCode;

-- Explicit use of join clause
SELECT U.UCode, U.UName, U.UColor, C.Size, C.Price
FROM UNIFORM U
JOIN COST C ON U.UCode = C.UCode;

-- Explicit use of natural join clause
SELECT U.UCode, U.UName, U.UColor, C.Size, C.Price
FROM UNIFORM U
NATURAL JOIN COST C;


