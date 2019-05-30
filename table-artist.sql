-- Problem 1:
-- Add 3 new artists to the artist table. ( It's already created )

INSERT INTO artist (name)
    VALUES('Kurt Cobain'),
          ('Billy Corgan'),
          ('Tupac');

-- Problem 2: 
-- Select 10 artists in reverse alphabetical order.

SELECT * FROM artist
	ORDER BY name DESC
	LIMIT 10;

-- Problem 3:
-- Select 5 artists in alphabetical order.

SELECT * FROM artist
	ORDER BY name ASC
	LIMIT 5;

-- Problem 4:
-- Select all artists that start with the word 'Black'.

SELECT * FROM artist
    WHERE name LIKE 'Black%';

-- Problem 5:
-- Select all artists that contain the word 'Black'.

SELECT * FROM artist
    WHERE name LIKE '%Black%';
