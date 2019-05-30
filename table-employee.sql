-- Problem 1: 
-- List all employee first and last names only that live in Calgary.

SELECT first_name, last_name FROM employee
    WHERE city LIKE 'Calgary'

-- Problem 2:
-- Find the birthdate for the youngest employee.

SELECT birth_date FROM employee
    ORDER BY birth_date DESC
    LIMIT 1

-- Problem 3:
-- Find the birthdate for the oldest employee.

SELECT birth_date FROM employee
    ORDER BY birth_date ASC
    LIMIT 1

-- Problem 4:
-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
--     You will need to query the employee table to find the Id for Nancy Edwards

SELECT reports_to FROM employee
	WHERE employee_id = 2

-- Problem 5:
-- Count how many people live in Lethbridge.

SELECT COUNT(*) FROM employee
	WHERE city LIKE 'Lethbridge';