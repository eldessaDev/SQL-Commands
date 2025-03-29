-- HOW TO MODIFY A TABLE ALREADY CREATED WITH ALTER 

         ALTER TABLE addresses MODIFY id INT;

    -- RENAME TABLE
        RENAME TABLE clientes TO usuarios;

       

    -- ADD A PRIMARY KEY TO A TABLE
        ALTER TABLE addresses ADD PRIMARY KEY(id);
        ALTER TABLE people ADD PRIMARY KEY(id);
        ALTER TABLE pets ADD PRIMARY KEY(id);

    -- REMOVE A PRIMARY KEY FROM A TABLE
        ALTER TABLE addresses DROP PRIMARY KEY;

    -- FOREIGN KEY TO A TABLE
        ALTER TABLE people
        ADD CONSTRAINT FK_PeopleAddress 
        FOREIGN KEY(address_id) 
        REFERENCES addresses(id);

    -- REMOVE A FOREIGN KEY FROM A TABLE
        ALTER TABLE pets
        DROP FOREIGN KEY FK_PetsPeople,
        DROP INDEX FK_PetsPeople;

    -- ADD A UNIQUE CONSTRAINT TO A COLUMN
        ALTER TABLE pets
        ADD CONSTRAINT u_species UNIQUE (species);

    -- REMOVE A UNIQUE CONSTRAINT FROM A COLUMN
        ALTER TABLE pets
        DROP INDEX u_species;


       