-- =======
-- =LIMIT=
-- =======

-- LIMIT THE NUMBER OF ROW RETURNED
        SELECT * FROM customers
        LIMIT 5;

-- RETURNS THE NEXT 5 ROWS STARTING FROM ROW 5
        SELECT * FROM customers
        LIMIT 12, 3;

-- OTHER WAY, SAME RESULT 
        SELECT * FROM customers 
        LIMIT 5 OFFSET 5;

        SELECT * FROM customers
        LIMIT 10 OFFSET 5;


        SELECT * FROM customers
        ORDER BY last_name
        LIMIT 10;
