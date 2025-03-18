-- INEQUALITY OPERATORS

USE coffee_store;

SELECT * FROM products;

/*
!= ... not equal to.
<> ... not equal to (i.e. greater than or less than).
>  ... greater than.
>= ... greater than or equal to.
<  ... less than.
<= ... less than or equal to.
*/

    -- != not equal to
        SELECT * FROM products
        WHERE price != 3.00;
    -- <>  not equal to
        SELECT * FROM products
        WHERE price <> 3.00;

    -- >= greater than or equal to 
        SELECT * FROM products
        WHERE price >= 3.00;
    -- > greater than.
        SELECT * FROM  products
        WHERE price > 3.00;

    -- < less than.
        SELECT * FROM products
        WHERE price < 3.00;
    -- <= less than or equal to.
        SELECT * FROM products
        WHERE price <= 3.00;

    --  WITH STRING VARCHAR TOO
        SELECT * FROM products
        WHERE name < 'F';
