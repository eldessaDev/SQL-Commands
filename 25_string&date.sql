USE cinema_booking_system;
-- String Functions

-- concat()
SELECT concat(first_name, last_name) AS Full_Name FROM customers;
SELECT concat(first_name, " ", last_name) AS Full_Name FROM customers;
SELECT concat(first_name, " ", last_name, " - Email: " , email) AS CustomerEmail FROM customers;

-- substring()
SELECT substring("Example", 3,3) AS Sub; -- substring(string, start, length)
SELECT substring("Example", 3) AS Sub;

SELECT * FROM films;
SELECT substring(name, 1, 4) AS short_name FROM films;
SELECT substring(name, 5, 6) AS short_name FROM films;

SELECT substring(name, -2, 2) AS short_name FROM films;
SELECT substring(name, -6, 5) AS short_name FROM films;

-- upper AND lower strings functions
SELECT upper(name) AS upper_name FROM rooms;
SELECT lower(name) AS lower_name FROM rooms;


-- PRACTICE
SELECT concat(name, ": ", length_min, " min") AS Film_and_Duration FROM films;

SELECT substring(email, 5) AS email_short FROM customers;

SELECT lower(first_name), upper(last_name) FROM customers
WHERE last_name = 'Smith';

SELECT substring(name, -3) FROM films;

SELECT concat(substring(first_name, 1, 3), " ", substring(last_name, 1,3)) FROM customers;


-- date()
SELECT date('2023-09-22 07:45:32');

SELECT start_time FROM screenings;
SELECT date(start_time) FROM screenings;

SELECT * FROM screenings
WHERE date(start_time) = '2023-07-08';
SELECT * FROM screenings
WHERE start_time = '2023-07-08';

SELECT * FROM screenings
WHERE date(start_time) BETWEEN '2023-07-08' AND '2023-09-09';
SELECT * FROM screenings
WHERE start_time BETWEEN '2023-07-08' AND '2023-09-09';

-- month()
SELECT month('2023-09-22 07:45:32');

SELECT start_time FROM screenings;

SELECT month(start_time) FROM screenings;

SELECT * FROM screenings
WHERE month(start_time) = 10;

SELECT month(start_time), count(*) FROM screenings
GROUP BY month(start_time);

-- year()
SELECT year('2023-09-22 07:45:32');
SELECT start_time FROM screenings;

SELECT year(start_time) FROM screenings;

SELECT * FROM screenings
WHERE year(start_time) =2023;

-- Practice
SELECT id AS film_id, start_time FROM screenings
WHERE date(start_time) = '2022-06-18';

SELECT * FROM screenings
WHERE date(start_time) BETWEEN '2023-03-06' AND '2023-03-13';

SELECT * FROM screenings
WHERE month(start_time) = 10;






