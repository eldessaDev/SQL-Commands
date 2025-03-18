-- HOW TO CHANGE A COLUMN'S NAME AND DATA TYPE

    -- CHANGE TABLE NAME

        -- 1 WAY CHANGE NAME
            ALTER TABLE pets
            CHANGE species animal_type VARCHAR(20);

        -- 2ND WAY CHANGE NAME
            ALTER TABLE pets 
            RENAME COLUMN `animal type` TO species;

        -- RENAME WITH SPACES BUT IS A BAD PRACTICE
            ALTER TABLE pets
            RENAME COLUMN species TO `animal type`;

    -- CHANGE THE COLUMN DATA TYPE
        -- WAY 1
            ALTER TABLE addresses
            CHANGE COLUMN city city VARCHAR(30); -- BEFORE WAS 20
        -- WAY 2
            ALTER TABLE addresses
            MODIFY COLUMN city CHAR(25);

        -- ONLY WORK IS THE TABLE COLUMN IS EMPTY
            ALTER TABLE addresses
            MODIFY COLUMN city INT;
