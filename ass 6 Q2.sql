-- i. To fetch last 2 characters from the user_id column.
SELECT RIGHT(user_id, 2) AS LastTwoCharacters
FROM Hotel;

-- ii. To display the values of name column in lower case.
SELECT LOWER(name) AS LowercaseName
FROM Hotel;

-- iii. To display 3 characters from 3rd place from the column city.
SELECT SUBSTRING(city, 3, 3) AS ThreeCharactersFrom3rdPosition
FROM Hotel;


create table hotel
(user_id varchar(20),
name varchar(20),
city varchar(20),
mobile_no varchar(11)
);