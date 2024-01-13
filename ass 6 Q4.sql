-- i) To display the name of the month of the current date .
SELECT MONTHNAME(CURDATE()) AS CurrentMonth;

-- ii) To remove spaces from the beginning and end of a string, “ Panorama “.
SELECT TRIM(' ' FROM ' Panorama ') AS TrimmedString;

-- iii) To display the name of the day eg, Friday or Sunday from your date of birth, dob.
SELECT DAYNAME(STR_TO_DATE('05-08-2000', '%d-%m-%Y')) AS DayOfBirth;

-- iv) To display the starting position of your first name(fname) from your whole name (name).
SELECT LOCATE(fname, name) AS FirstNamePosition;

-- v) To compute the remainder of division between two numbers, n1 and n2
SELECT n1 % n2 AS Remainder;
-- n1 and n2 can be any natural real numbers