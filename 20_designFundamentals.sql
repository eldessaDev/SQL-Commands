-- DESIGN FUNDAMENTALS -- LEVELS OF NORMALIZATION

🔹 First Normal Form (1NF)
Goal: Eliminate repeating or multi-valued fields (no lists or arrays in a cell).

Rules:
Each column must contain atomic (indivisible) values.
Each row must be unique.
Each column must contain values of the same type.
-----------------------------------------------------------------------
Example before (NOT in 1NF):

ID	Name	Phone Numbers
1	Ana	    111-222, 333-444

-----------------------------------------------------------------------
After (In 1NF):

ID	Name	Phone Number
1	Ana	    111-222
1	Ana	    333-444
-----------------------------------------------------------------------

🔹 Second Normal Form (2NF)
Goal: Remove partial dependency on a composite primary key.

Rules:
Must be in 1NF.
All non-key attributes must depend on the whole primary key, not just part of it.
-----------------------------------------------------------------------
Example before (NOT in 2NF):
Primary Key = (StudentID, CourseID)

StudentID	CourseID	StudentName
1	101	Ana
➡ StudentName depends only on StudentID, not the full key.

-----------------------------------------------------------------------
After (In 2NF):
Student Table:

StudentID	StudentName
1	Ana
Student_Course Table:
StudentID	CourseID
1	101

🔹 Third Normal Form (3NF)
Goal: Remove transitive dependency.

Rules:
Must be in 2NF.
Non-key attributes must depend only on the primary key — not on other non-key attributes.

------------------------------------------------------------------------------------
Example before (NOT in 3NF):

EmployeeID	Name	DepartmentID	DepartmentName
1	Luis	            10	        Finance
➡ DepartmentName depends on DepartmentID, not directly on the primary key.

------------------------------------------------------------------------------------
After (In 3NF):
Employee Table:

EmployeeID	Name	DepartmentID
1	Luis	10
Department Table:

DepartmentID	DepartmentName
    10	        Finance