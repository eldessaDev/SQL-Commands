-- NULL, NOT NULL IN WHERE
-- YOU HAVE TO USE is OR is not

USE coffee_store;

SELECT * FROM customers;

-- IS NULL
SELECT * FROM customers
WHERE phone_number  IS NULL;

-- IS NOT NULL
SELECT * FROM customers
WHERE phone_number IS NOT NULL;
