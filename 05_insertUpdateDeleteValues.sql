-- INSERT, UPDATE AND DELETE VALUES

    -- INSERT VALUES
            INSERT INTO products (name, price, coffee_origin) 
            VALUES ('Espreso', 2.50, 'Brazil');

            INSERT INTO products(name, price, coffee_origin)
            VALUES ('Macchiato', 3.00, 'Brazil'), ('Cappiccino', 3.50, 'Costa Rica');

            INSERT INTO products(name, price, coffee_origin)
            VALUES('Latte', 3.50, 'Indonesia'), ('Americano', 3.00, 'Brazil'),
                  ('Flat White', 3.50, 'Indonesia'), ('Filter', 3.00, 'India');

    -- SQL SETTING TURN FALSE
            SET sql_safe_updates = false;

    -- SHOW UPLOADS FILES PATH
            SHOW VARIABLES LIKE 'secure_file_priv';
            

    -- UPDATE VALUES OF TWO COLUMNS BY name 
            UPDATE products
            SET price = 3.25, coffee_origin = 'Ehtiopia'
            WHERE name = 'Americano';

            UPDATE products
            SET coffee_origin = 'Colombia'
            WHERE coffee_origin  = 'Brazil';

    -- DELETE VALUES 1 ROW
            DELETE FROM people
            WHERE name  = 'John';

    -- DELETE MULTIPLE ROWS
            DELETE FROM people
            WHERE gender = 'F';

    -- DELETE ALL ROWS OF VALUES
            DELETE FROM people;