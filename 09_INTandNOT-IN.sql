-- =========================
-- =INT and NOT IN operator=
-- =========================

        USE coffee_store;
        SELECT * FROM customers;

        SELECT * FROM customers
        WHERE last_name IN ('Taylor', 'Bluth','Amstrong');

        SELECT * FROM customers
        WHERE first_name NOT IN('Katie', 'John', 'George');

