--  HOW CREATE QUERYS WITH UNIQUE VALUES

        SELECT coffee_origin FROM products;

-- VIEW UNIQUE VALUES
        SELECT DISTINCT coffee_origin FROM products;

-- VIEW UNIQUE VALUES  
        SELECT DISTINCT coffee_origin, id FROM products;

        SELECT DISTINCT coffee_origin, price FROM products;

-- VIEW UNIQUE VALUES AND ORBER BY
        SELECT DISTINCT customer_id FROM orders
        WHERE order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59.999999'
        ORDER BY customer_id;

        SELECT DISTINCT customer_id, product_id FROM orders
        WHERE order_time BETWEEN '2023-02-01' AND '2023-02-28 23:59:59.999999'
        ORDER BY customer_id;