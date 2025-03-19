-- LIKE in a WHERE clause

USE coffee_store;
SELECT * FROM customers;
/*
	% macth any number of characters.

	_ mach just one number.
*/

-- RETURN ALL VALUES BEGIN WIN W 
SELECT * FROM customers
WHERE last_name LIKE 'W%';

-- RETURN ALL VALUE THAT HAS THE CHARACTER
SELECT * FROM customers
WHERE last_name LIKE '%O%';

-- MACTH A SINGLE CHARACTER
SELECT * FROM customers
WHERE first_name LIKE '_O_';

SELECT * FROM customers 
WHERE first_name LIKE '_O__';
