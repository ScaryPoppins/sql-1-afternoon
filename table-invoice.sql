-- Problem 1:
-- Count how many orders were made from the USA.

SELECT COUNT (*) from invoice 
    WHERE billing_country LIKE 'USA';

-- Problem 2:
-- Find the largest order total amount.

SELECT MAX (total) from invoice;

-- Problem 3:
-- Find the smallest order total amount.

SELECT MIN (total) from invoice;

-- Problem 4:
-- Find all orders bigger than $5.

SELECT * from invoice 
	WHERE total > 5;

-- Problem 5:
-- Count how many orders were smaller than $5.

SELECT COUNT(total) from invoice 
	WHERE total > 5;

-- Problem 6:
-- Count how many orders were in CA, TX, or AZ (use IN).

SELECT COUNT(invoice_id) FROM invoice
	WHERE billing_state IN ('CA', 'TX', 'AZ')

-- Problem 7:
-- Get the average total of the orders.

SELECT AVG(total) FROM invoice;

-- Problem 8:
-- Get the total sum of the orders.

SELECT SUM(total) FROM invoice;