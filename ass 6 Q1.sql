-- i. Display 7 characters extracted from 7th left character onwards from the string ‘INDIA SHINING’.
SELECT SUBSTRING('INDIA SHINING', 7, 7) AS ExtractedString;

-- ii. Display the position of occurrence of string ‘COME’ in the string ‘WELCOME WORLD’.
SELECT INSTR('WELCOME WORLD', 'COME') AS PositionOfCome;

-- iii. Round off the value 23.78 to one decimal place.
SELECT ROUND(23.78, 1) AS RoundedValue;

-- iv. Display the remainder of 100 divided by 9.
SELECT 100 % 9 AS Remainder;

-- v. Remove all the expected leading and trailing spaces from a column userid of the table ‘USERS’.
SELECT TRIM(userid) AS CleanedUserID
FROM USERS;
