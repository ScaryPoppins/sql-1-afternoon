-- Problem 1:
-- Create a table called orders that records: person_id, product_name, product_price, quantity.
CREATE TABLE orders (
  person_id INTEGER, 
  product_name VARCHAR(200), 
  product_price DECIMAL(20, 2), 
  quantity INTEGER
);


-- Problem 2:
-- Add 5 orders to the orders table.
--         Make orders for at least two different people.
--         person_id should be different for different people.

INSERT INTO orders(person_id, product_name, product_price, quantity)
    VALUES (778796,'LT-4 engine', 10000.00,1),
	       (4, '4R-100 transmission', 5000.00,1),
           (70784, 'brisket taco', 4.89, 3),
           (70784, 'quesedilla', 7.99,2),
           (40404, 'steering wheel', 300.39,1);

-- Problem 3:
-- Select all the records from the orders table.

SELECT * FROM orders;

-- Problem 4:
-- Calculate the total number of products ordered.

SELECT SUM(quantity)
    from orders;


-- Problem 5:
-- Calculate the total order price.

SELECT SUM(product_price * quantity)
    from orders;

-- Problem 6:
-- Calculate the total order price by a single person_id.

SELECT SUM(product_price * quantity)
    from orders
    WHERE person_id = 70784;