-- HOE TO USE LEFT JOINS

USE coffee_store;
SELECT * FROM orders;
SELECT * FROM curstomers;

UPDATE orders
SET customer_id = Null
WHERE id IN (1,3,5); 

-- HOW TO USE LEFT JOIN
SELECT o.*, c.* FROM orders o
LEFT JOIN customers c ON  o.customer_id - c.id
ORDER BY o.order_time;

SELECT o.*, c.* FROM customers c
LEFT JOIN orders o ON o.customer_id = c.id
ORDER BY o.id;


-- Tipo de JOIN	¿Qué devuelve?
-- INNER JOIN	Solo coincidencias en ambas tablas
-- LEFT JOIN	Todas las filas de la izquierda y coincidencias de la derecha
-- RIGHT JOIN	Todas las filas de la derecha y coincidencias de la izquierda