-- HOW TO USE SELECT, WHERE(FIRST STEPS)

    -- RETRIEVE 1 COLUMN FROM TABLE
        SELECT last_name FROM customers;
        
    -- RETRIEVE 2 COLUMN FROM TABLE
        SELECT last_name, phone_number FROM customers;  
 
    -- RETRIEVE VARCHAR ROW FROM TABLE
        SELECT * FROM products
        WHERE coffee_origin = 'Colombia';
 
    -- RETRIEVE DECIMAL ROW FROM TABLE BOTH CRITERIA MUST BE TRUE
        SELECT * FROM products
        WHERE price = 3.00
        AND coffee_origin = 'Colombia';
    -- RETRIEVE DECIMAL ROW FROM TABLE WHERE ONE OR BOTH CRITERIA MUST BE TRUE
        SELECT * FROM products
        WHERE price = 3.00
        OR coffee_origin = 'Colombia';