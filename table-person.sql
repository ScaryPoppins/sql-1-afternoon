-- Problem 1:
-- Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color.  id should be an auto-incrementing id/primary key - Use type: SERIAL

  CREATE TABLE person (
    id SERIAL PRIMARY KEY, 
    name INTEGER, 
    height INTEGER, 
    city VARCHAR (100),
    favorite_color VARCHAR (50)
);

-- OOOPS -- I accidentally set name as an integer.  Let's fix that:

-- (Another OOPS in question 5)

ALTER TABLE person 
  ALTER COLUMN name TYPE VARCHAR(200);


-- Problem 2:
-- Add 5 different people into the person database.

INSERT INTO person(name, favorite_color, city, height)
  VALUES('Mark Nagel', 'Grey', 'Highland Village', 180),
        ('Sam Superman', 'Blue', 'Metropolis', 190),
        ('Robbie Robot', 'Silver', 'Arcadia', 15),
        ('Pinky Flamingo','Pink', 'Zoolandia', 130), 
        ('Fernando Chicken', 'Red', 'Beefworld', 70);

--  Problem 3:  
-- List all the people in the person table by height from tallest to shortest.

SELECT name FROM person
  ORDER BY height DESC;

-- Problem 4: 
-- List all the people in the person table by height from shortest to tallest.

SELECT name FROM person
  ORDER BY height ASC;

-- Problem 5: 
--List all the people in the person table by age from oldest to youngest.

-- OOPS - I forgot to add AGE.   Let's add that:
 
-- First adding the column:
ALTER TABLE person
ADD COLUMN age INTEGER;

--Next I'll update the column with the data I forgot to add initially:

UPDATE person SET age = CASE
	WHEN id = 1 THEN 36
	WHEN id = 2 THEN 25
  WHEN id = 3 THEN 7
  WHEN id = 4 THEN 4
  WHEN id = 5 THEN 2
END 
WHERE id IN (1, 2, 3, 4, 5);

SELECT * FROM person;

-- on to problem 5:  

SELECT name FROM person
  ORDER BY age DESC;

-- Problem 6:
--  List all the people in the person table older than age 20.

SELECT name FROM person
  WHERE age > 20;

-- Problem 7:
--List all the people in the person table that are exactly 18.

SELECT name FROM person
  WHERE age = 18;

-- Problem 8:
-- List all the people in the person table that are less than 20 and older than 30.

SELECT name FROM person
  WHERE age < 20 
  OR age > 30;

-- Problem 9:
-- List all the people in the person table that are not 27 (Use not equals).

SELECT name FROM person
  WHERE age <> 20;

-- Problem 10: 
-- List all the people in the person table where their favorite color is not red.

SELECT name FROM person
  WHERE LOWER(favorite_color) <> LOWER ('red')

-- Problem 11:
-- List all the people in the person table where their favorite color is not red and is not blue.

SELECT name FROM person
  WHERE LOWER(favorite_color) <> LOWER ('red')
  AND LOWER(favorite_color) <> LOWER ('blue')

-- Problem 12:
-- List all the people in the person table where their favorite color is orange or green.

SELECT name FROM person
  WHERE LOWER(favorite_color) = LOWER ('orange')
  OR LOWER(favorite_color) = LOWER ('green')

-- Problem 13:
-- List all the people in the person table where their favorite color is orange, green or blue (use IN).

SELECT name FROM person
  WHERE favorite_color IN ('orange', 'green', 'blue');


-- Problem 14
-- List all the people in the person table where their favorite color is yellow or purple (use IN).

SELECT * FROM person
  WHERE favorite_color IN ('yellow', 'purple');



