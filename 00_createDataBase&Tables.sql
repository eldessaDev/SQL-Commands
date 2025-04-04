--  HOW CREATE DATABASES AND TABLES

    -- CREATE DATABASE
        CREATE DATABASE coffee_store;

        USE coffee_store;

        --CREATE TABLES
        CREATE TABLE products(
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(30),
            price DECIMAL(3,2)
        );

        CREATE TABLE customers(
            id INT AUTO_INCREMENT PRIMARY KEY,
            first_name VARCHAR(50),
            last_name VARCHAR(50),
            gender ENUM('M', 'F'),
            phone_number VARCHAR(50)	
        );

        CREATE TABLE orders(
            id INT AUTO_INCREMENT PRIMARY KEY,
            product_id INT,
            customer_id INT,
            order_time DATETIME,
            FOREIGN KEY(product_id) REFERENCES products(id),
            FOREIGN KEY(customer_id) REFERENCES customers(id)
        );

    -- INSERT VALUES TO TABLE
        INSERT INTO products(name, price) VALUES ('Black Coffee', 2.50);
        INSERT INTO customers(first_name, last_name, gender, phone_number) VALUES ('Kenny', 'Romero', 'M', '9045773016');
        INSERT INTO orders(product_id, customer_id, order_time) VALUES (1, 1, '2025-03-12'); 

-- COMMANDS TO VIEW
SHOW DATABASES;
SHOW TABLES;
USE products;
DESCRIBE products;
SELECT * FROM products;

No connection established fix = go to services on windows en start the service MYSQL80


