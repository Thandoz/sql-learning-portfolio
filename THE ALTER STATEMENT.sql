/*
============================================================
ALTER TABLE STATEMENT
============================================================

Category:
Data Definition Language (DDL)

Purpose:
The ALTER TABLE statement is used to modify the structure
of an existing table without recreating it.

Common Uses:
- Add new columns
- Remove columns
- Modify column data types
- Rename columns
- Add or remove constraints

============================================================
BUSINESS SCENARIO
============================================================

The business now requires a phone number for every
customer record stored in the Persons table.

A new column named Phone will be added with the
following requirements:

✓ Maximum length of 15 characters
✓ Cannot contain NULL values

============================================================
SQL STATEMENT
============================================================
*/

ALTER TABLE Persons
ADD Phone VARCHAR(15) NOT NULL;

GO

/*
============================================================
BREAKDOWN
============================================================

ALTER TABLE
    Specifies the existing table to be modified.

Persons
    The table being updated.

ADD
    Adds a new column to the table.

Phone
    Name of the new column.

VARCHAR(15)
    Stores variable-length text up to 15 characters.

NOT NULL
    Ensures every record contains a phone number.

============================================================
EXAMPLE
============================================================

Before:

ID   First_Name   Last_Name
--------------------------------
1    John         Smith
2    Sarah        Jones

After:

ID   First_Name   Last_Name   Phone
----------------------------------------
1    John         Smith       0812345678
2    Sarah        Jones       0823456789

============================================================
KEY TAKEAWAY
============================================================

ALTER TABLE allows database developers and data engineers
to evolve table structures as business requirements change
without rebuilding the entire table.

POSSIBLE QUESTIONS :
What is the purpose of ALTER TABLE?

Answer:
ALTER TABLE is a DDL command used to modify the
structure of an existing table by adding, deleting,
or changing columns and constraints.

============================================================
SKILLS DEMONSTRATED
============================================================

✓ Data Definition Language (DDL)

✓ Database Schema Management

✓ Table Structure Modification

✓ Constraint Implementation

✓ SQL Server Development

============================================================
*/