-- =============
-- =RIGHT JOINS=
-- =============

    SELECT o.*, c.* FROM customers c
    LEFT JOIN orders o ON o.customer_id = c.id
    ORDER BY o.id;

    -- RIGHT JOIN
    SELECT o.*, c.* FROM customers c
    RIGHT JOIN orders o ON o.customer_id = c.id
    ORDER BY o.id;

    SELECT o.*, c.* FROM orders o
    RIGHT JOIN customers c ON o.customer_id = c.id
    ORDER BY o.order_time;
    




