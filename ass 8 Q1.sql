-- a. Find the titles of courses in the Comp. Sci. department that have 3credits.
SELECT title
FROM course
WHERE credits = 3 AND dept_name = 'Comp. Sci.';

-- b. Find the IDs of all students who were taught by an instructor namedEinstein; make sure there are no duplicates in the result.
SELECT DISTINCT student.ID
FROM student
JOIN takes ON student.ID = takes.ID
JOIN instructor ON takes.instructor_id = instructor.ID
WHERE instructor.name = 'Einstein';

-- c. Find the highest salary of any instructor.
SELECT MAX(salary) AS highest_salary
FROM instructor;

-- d. Find all instructors earning the highest salary (there may be morethan one with the same salary).
SELECT ID, name, salary
FROM instructor
WHERE salary = (SELECT MAX(salary) FROM instructor);

-- e. Find the enrollment of each section thatwas offered inAutumn 2009.
SELECT section_id, COUNT(student_id) AS enrollment
FROM std
WHERE semester = '2' AND year = 2009
GROUP BY section_id;

-- f. Find the maximum enrollment, across all sections, in Autumn 2009.
SELECT MAX(enrollment) AS max_enrollment
FROM (SELECT section_id, COUNT(student_id) AS enrollment
FROM std
WHERE semester = '2' AND year = 2009
GROUP BY section_id) AS enrollment_data;

-- g. Find the sections that had themaximumenrollment inAutumn 2009.
SELECT section_id, COUNT(student_id) AS enrollment
FROM std
WHERE semester = '2' AND year = 2009
GROUP BY section_id
HAVING COUNT(student_id) = (SELECT MAX(enrollment) FROM (SELECT section_id, COUNT(student_id) AS enrollment 
FROM std WHERE semester = '2' AND year = 2009 GROUP BY section_id) AS max_enrollment_data);
