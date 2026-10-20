-- THE EXECUTION OF SQL USING ALL THE CLAUSES
--This is the order that developers write SQL statements.
/*

SELECT
    Country,
    AVG(Score) AS Avg_Score
FROM Customers
WHERE Score <> 0
GROUP BY Country
HAVING AVG(Score) > 430
ORDER BY Avg_Score DESC;


/*

--BUT THIS IS HOW SQL EXECUTES OR READS THE CODE 
============================================================
SQL EXECUTION ORDER
============================================================

The database does NOT execute the query from top to bottom.

Instead, SQL processes the query in the following order:

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

============================================================
*/


============================================================
STEP-BY-STEP EXECUTION
============================================================
 
Query:
*/
 
SELECT
Country,
AVG(Score) AS Avg_Score
FROM Customers
WHERE Score <> 0
GROUP BY Country
HAVING AVG(Score) > 430
ORDER BY Avg_Score DESC;
 
 
/*
------------------------------------------------------------
STEP 1: FROM
------------------------------------------------------------
 
FROM Customers
 
SQL locates the Customers table and loads the data.
 
*/
 
 
/*
------------------------------------------------------------
STEP 2: WHERE
------------------------------------------------------------
 
WHERE Score <> 0
 
Rows with a score of 0 are removed BEFORE aggregation.
 
*/
 
 
/*
------------------------------------------------------------
STEP 3: GROUP BY
------------------------------------------------------------
 
GROUP BY Country
 
The remaining rows are grouped by country.
 
Example:
 
South Africa
South Africa
South Africa
 
Namibia
Namibia
 
Botswana
 
becomes
 
Group 1 = South Africa
Group 2 = Namibia
Group 3 = Botswana
 
*/
 
 
/*
------------------------------------------------------------
STEP 4: HAVING
------------------------------------------------------------
 
HAVING AVG(Score) > 430
 
SQL filters the grouped results based on the
aggregate calculation.
 
Only countries with an average score greater
than 430 are kept.
 
*/
 
 
/*
------------------------------------------------------------
STEP 5: SELECT
------------------------------------------------------------
 
SELECT Country,
AVG(Score)
 
SQL returns the columns requested by the user.
 
*/
 
 
/*
------------------------------------------------------------
STEP 6: ORDER BY
------------------------------------------------------------
 
ORDER BY Avg_Score DESC
 
The final result is sorted from highest
average score to lowest average score.
 
*/
 
 
/*
============================================================
VISUAL FLOW
============================================================
 
Customers Table
│
▼
FROM Customers
│
▼
WHERE Score <> 0
│
▼
GROUP BY Country
│
▼
AVG(Score)
│
▼
HAVING AVG(Score) > 430
│
▼
SELECT Columns
│
▼
ORDER BY Avg_Score DESC
│
▼
Final Result
 
============================================================
*/
 
 
/*
============================================================
MEMORY TRICK
============================================================
 
We WRITE:
 
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
 
But SQL EXECUTES:
 
FROM
WHERE
GROUP BY
HAVING
SELECT
ORDER BY
 
Think:
 
Find Data -> FROM
Filter Rows -> WHERE
Create Groups -> GROUP BY
Filter Groups -> HAVING
Display Columns -> SELECT
Sort Results -> ORDER BY
 
============================================================
*/

/*
Quick Question:
What is the difference between SQL Query Order and Execution Order?
 
Answer:
 
SQL queries are written in the order:
 
SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY
 
However, SQL executes them in the order:
 
FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY
 
This execution order explains why aggregate functions cannot be used in the 
WHERE clause and why HAVING is used after GROUP BY.
