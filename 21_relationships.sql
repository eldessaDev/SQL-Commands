-- RELATIONSHIPS
    -- One to one
    1. One-to-One (1:1)
One row in table A is related to only one row in table B.

Example:

Table Person ↔ Table Passport

Each person has one passport, and each passport belongs to one person.

    -- One to many
    2. One-to-Many (1:N)
One row in table A is related to multiple rows in table B.

Example:

Table Customer ↔ Table Orders

One customer can have many orders, but each order belongs to one customer.

    -- Many to many
    3. Many-to-Many (N:N)
Many rows in table A are related to many rows in table B.

Implemented using a junction (or join) table.

Example:

Table Students ↔ Table Courses ↔ Join Table Student_Courses

A student can take many courses, and a course can have many students.
