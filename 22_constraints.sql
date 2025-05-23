-- =============
-- =CONSTRAINTS=
-- =============

    NOT NULL        a column can't contain any null values.
    UNIQUE          a colum can't contain any duplicate values.
    PRIMARY KEY     a colum that uniqely identifies each row of data.
    FOREIGN KEY     a colum which is related to a primary key in another table. 
    CHECK           controls the values that can be inserted into a column
                    example:
                        CHECK(rating BETWEEN 0 AND 100)
    DEFAULT         if no value is inserted into a column, you can set a default value
                    example:
                        email DEFAULT 'No Data'    
    