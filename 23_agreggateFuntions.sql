-- ====================
-- =AGREGGATE-FUNTIONS=
-- ====================

-- count()
SELECT count(*) FROM customers;

SELECT count(last_name) FROM customers;

SELECT count(first_name) FROM customers;

SELECT count(*) FROM customers
WHERE last_name = 'Smith';

SELECT count(*) FROM customers
WHERE first_name IS NULL;

SELECT count(length_min) FROM films
WHERE length_min > 120;

SELECT last_name FROM customers
WHERE first_name IS NULL;

-- sum()
SELECT sum(no_seats) FROM rooms;

SELECT sum(no_seats) FROM rooms
WHERE id > 1;

-- MIN, MAX
SELECT max(length_min) FROM films;

SELECT min(length_min) FROM films;

-- average
SELECT avg(length_min) FROM films;

SELECT avg(length_min) FROM films
WHERE length_min > 120;

-- GROUP BY
SELECT * FROM bookings;

SELECT count(*) FROM bookings;

SELECT customer_id, count(*) FROM bookings
GROUP BY customer_id;

SELECT customer_id, screening_id, count(*) FROM bookings
GROUP BY customer_id, screening_id
ORDER BY customer_id;

SELECT f.name, s.start_time, c.first_name, c.last_name, COUNT(b.id) FROM films f 
INNER JOIN screenings s ON f.id = s.film_id
INNER JOIN bookings b ON s.id = b.screening_id
INNER JOIN customers c ON c.id = b.customer_id
GROUP BY f.namE, c.last_name, c.first_name, s.start_time
ORDER BY s.start_time ;

-- HAVING
SELECT customer_id, screening_id, COUNT(*) FROM bookings
GROUP BY customer_id, screening_id
HAVING customer_id = 10;

SELECT customer_id, screening_id, COUNT(*) FROM bookings
INNER JOIN screenings ON bookings.screening_id = screenings.id
WHERE year(screenings.start_time) = 2022
GROUP BY customer_id, screening_id
HAVING customer_id = 10;
