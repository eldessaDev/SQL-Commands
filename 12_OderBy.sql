-- ==========
-- =ORDER BY=
-- ==========

-- RETURN ALL VALUES ASC ORDER BY 
        SELECT * FROM products
        ORDER BY price ASC;

-- RETURN ALL VALUES DESC ORDER BY
        SELECT * FROM products
        ORDER BY price DESC;

        SELECT * FROM customers;

-- RETURN ALL VALUES ASC ALPHABETIC ORDER BY
        SELECT * FROM customers
        ORDER BY last_name;
-- RETURN ALL VALUES DESC ALPHABETIC ORDER BY
        SELECT * FROM customers
        ORDER BY last_name DESC;

-- RETURN VALUES OF TWO COLUMNS ORDER BY
        SELECT * FROM customers
        WHERE last_name = 'Bluth'
        ORDER BY last_name, first_name;

-- RETURN VALUES ASC
        SELECT * FROM orders
        ORDER BY order_time;

-- RETURN VALUES DESC
        SELECT * FROM orders
        ORDER BY order_time DESC;