/*
============================================================
SQL DISTINCT, TOP, AND ORDER BY
============================================================

Description:
This script demonstrates how to:
1. Remove duplicate values using DISTINCT
2. Limit the number of rows returned using TOP
3. Sort results using ORDER BY

These commands are commonly used in data analysis,
reporting, and business intelligence tasks.

============================================================
LEARNING OBJECTIVES
============================================================

- Retrieve unique values from a dataset
- Return only a specific number of records
- Identify highest and lowest values
- Sort data in ascending and descending order

============================================================
*/
/*
============================================================
DISTINCT
============================================================
Purpose:
Removes duplicate values from a result set and returns
only unique records.

Important Note:
DISTINCT should only be used when necessary because it
can be an expensive operation on large datasets.

Question:
Select a unique list of all countries in the dataset.
*/

SELECT DISTINCT Country
FROM Customers;

/*
============================================================
EXPLANATION
============================================================
Without DISTINCT:
South Africa
South Africa
South Africa
Namibia
Botswana

With DISTINCT:

South Africa
Namibia
Botswana

DISTINCT ensures that each value appears only once
in the result set.

============================================================
*/


/*
============================================================
TOP
============================================================

Purpose:
Limits the number of rows returned by a query.

TOP does NOT filter data based on a condition.
It simply returns the specified number of rows.

Syntax:

SELECT TOP N
FROM TableName

============================================================
*/


/*
============================================================
EXAMPLE 1: RETURN THE FIRST 3 CUSTOMERS
============================================================
*/

SELECT TOP 3 *
FROM Customers;


/*
============================================================
EXPLANATION
============================================================

TOP 3 returns only the first three rows from the result.

Unless ORDER BY is used, SQL does not guarantee
which three rows will be returned.

============================================================
*/


/*
============================================================
ORDER BY
============================================================

Purpose:
Sorts the results of a query.

ASC  = Ascending Order (Lowest to Highest)
DESC = Descending Order (Highest to Lowest)

============================================================
*/


/*
============================================================
EXAMPLE 2: TOP 3 CUSTOMERS WITH THE HIGHEST SCORE
============================================================

Question:
Retrieve the three customers with the highest score.
*/

SELECT TOP 3
    ID,
    First_Name,
    Score
FROM Customers
ORDER BY Score DESC;


/*
============================================================
EXPLANATION
============================================================

ORDER BY Score DESC

DESC means Descending Order.

Highest scores appear first.

TOP 3 then returns the first three records,
which are the customers with the highest scores.

============================================================
*/


/*
============================================================
EXAMPLE 3: LOWEST 2 SCORING CUSTOMERS
============================================================

Question:
Retrieve the two customers with the lowest score.
*/

SELECT TOP 2 *
FROM Customers
ORDER BY Score ASC;


/*
============================================================
EXPLANATION
============================================================

ORDER BY Score ASC

ASC means Ascending Order.

Lowest scores appear first.

TOP 2 then returns the first two rows,
which represent the lowest-scoring customers.

============================================================
*/


/*
============================================================
EXAMPLE 4: TWO MOST RECENT ORDERS
============================================================

Question:
Retrieve the two most recent customer orders.
*/

SELECT TOP 2 *
FROM Orders
ORDER BY Order_Date DESC;


/*
============================================================
EXPLANATION
============================================================

ORDER BY Order_Date DESC

The most recent dates appear first.

TOP 2 returns the first two records,
which represent the latest orders placed.

This is a common business requirement for:

- Sales Reporting
- Customer Activity Monitoring
- Operational Dashboards

============================================================
*/


/*
============================================================
SQL SERVER VS MYSQL
============================================================

SQL Server:

SELECT TOP 3 *
FROM Customers;

MySQL:

SELECT *
FROM Customers
LIMIT 3;

Key Difference:

TOP    -> SQL Server
LIMIT  -> MySQL

Both serve the same purpose:
Restricting the number of rows returned.

============================================================
*/


/*
============================================================
QUICK MEMORY TRICK
============================================================

DISTINCT = Remove Duplicates

TOP = Limit Rows Returned

ORDER BY ASC = Lowest to Highest

ORDER BY DESC = Highest to Lowest

TOP + ORDER BY DESC
= Highest Values

TOP + ORDER BY ASC
= Lowest Values

============================================================
*/
