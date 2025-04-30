-- ============
-- =INNER JOIN=
-- ============

-- HOW TO SELECT MULTIPLES TABLES
-- SQL JOINs
-- DIFERENT TYPES OF JOINs
-- INNER, LEFT AMD RIGHT joins
-- Selecting using multiples joins

-- HOW TO SELECT MULTIPLES TABLES
-- SQL JOINs
-- DIFERENT TYPES OF JOINs
-- INNER, LEFT AMD RIGHT joins
-- Selecting using multiples joins

-- Tipo de JOIN	¿Qué devuelve?
-- INNER JOIN	Solo coincidencias en ambas tablas
-- LEFT JOIN	Todas las filas de la izquierda y coincidencias de la derecha
-- RIGHT JOIN	Todas las filas de la derecha y coincidencias de la izquierda

USE coffee_store;
SHOW TABLES;
DESCRIBE orders;

SELECT * FROM orders;
SELECT * FROM products; 
SELECT * FROM customers;

-- INNER JOIN (INNER IS OPCIONAL)
    SELECT products.name, orders.order_time FROM orders
    INNER JOIN products ON orders.product_id = products.id;

-- INNER JOIN SHORT WAY WITH ALIAS
    SELECT p.name, o.order_time FROM orders AS o
    INNER JOIN products p ON o.product_id = p.id;

    SELECT p.name, o.order_tiME FROM orders AS o
    JOIN products p ON o.product_id = p.id
    WHERE o.product_id = 5
    ORDER BY o.order_time;


-- INNER JOIN SYNTAX
    SELECT <table name>.<column name>, ... FROM <table 1>
    JOIN <table 2> ON <table 1>.<column name> = <table 1>.<column name>
    WHERE clause, if needed
    ORDER BY clause, if needed;

-- PRACTICE
    SELECT customers.first_name, customers.last_name, orders.order_time FROM orders
    INNER JOIN customers ON orders.customer_id = customers.id; 

