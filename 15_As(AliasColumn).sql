-- HOW NO USE ALIAS ON COLUMNS

USE coffee_store;
SELECT id, name, price, coffee_origin FROM products;

-- USE ALIAS CON COLUMN NAMES 
        SELECT id, name AS coffee, price, coffee_origin AS country FROM products;

-- THE AS COMMAND IS NO NECESARY IF YOU WAN BUT IS NO GOOD (US IS BETTER)
        SELECT id, name coffee, price, coffee_origin country FROM products;




