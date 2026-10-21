 # Basic SQL Foundations, Data Aggregation, Filtering & Sorting

## Overview

This module documents my journey through fundamental SQL concepts used for data exploration, reporting, and analysis. It covers the essential building blocks required before progressing to advanced topics such as joins, subqueries, window functions, and analytical reporting.

Throughout these exercises, I learned how to retrieve data, filter records, summarize information, remove duplicates, sort results, and understand how SQL processes queries behind the scenes.

---

## Topics Covered

### Basic SQL
- SELECT Statements
- DISTINCT
- ORDER BY
- TOP
- Column Aliases
- Basic Data Exploration

### Data Filtering
- WHERE Clause
- HAVING Clause

### Data Aggregation
- GROUP BY
- SUM()
- AVG()
- COUNT()
- MIN()
- MAX()

### Data Sorting & Limiting
- ORDER BY ASC
- ORDER BY DESC
- TOP (SQL Server)
- LIMIT (MySQL Equivalent)

### SQL Query Processing
- Query Writing Order
- SQL Execution Order

---

## Learning Objectives

By completing this section, I developed the ability to:

- Retrieve and inspect data efficiently
- Explore and understand table structures
- Write clean and readable SQL queries
- Filter records before and after aggregation
- Summarize large datasets using aggregate functions
- Remove duplicate values from datasets
- Sort and rank data effectively
- Understand how SQL executes queries internally
- Build a strong foundation for advanced SQL concepts

---

## Key Concepts Learned

### 1. SELECT Statements

Used to retrieve data from database tables.

```sql
SELECT *
FROM Customers;
```

Used for data exploration and understanding the contents of a table.

---

### 2. DISTINCT

Removes duplicate values and returns only unique records.

```sql
SELECT DISTINCT Country
FROM Customers;
```

✅ Use when you need unique values only.

---

### 3. ORDER BY

Sorts query results.

Ascending order:

```sql
SELECT *
FROM Customers
ORDER BY Score ASC;
```

Descending order:

```sql
SELECT *
FROM Customers
ORDER BY Score DESC;
```

✅ Commonly used for reporting and ranking data.

---

### 4. TOP

Limits the number of rows returned.

```sql
SELECT TOP 5 *
FROM Customers;
```

✅ Useful when viewing samples of large datasets.

---

### 5. Column Aliases

Improves readability by renaming columns in the output.

```sql
SELECT
    AVG(Score) AS Average_Score
FROM Customers;
```

✅ Makes reports easier to understand.

---

### 6. WHERE Clause

Filters rows before aggregation occurs.

```sql
SELECT *
FROM Customers
WHERE Score > 500;
```

✅ Used to filter individual records.

---

### 7. GROUP BY

Groups records before aggregation.

```sql
SELECT
    Country,
    COUNT(ID) AS Total_Customers
FROM Customers
GROUP BY Country;
```

✅ Used to summarize data by category.

---

### 8. Aggregate Functions

Common functions used for reporting:

```sql
SUM()
AVG()
COUNT()
MIN()
MAX()
```

Example:

```sql
SELECT
    Country,
    AVG(Score) AS Average_Score
FROM Customers
GROUP BY Country;
```

✅ Converts detailed data into meaningful summaries.

---

### 9. HAVING Clause

Filters data after aggregation.

```sql
SELECT
    Country,
    AVG(Score) AS Average_Score
FROM Customers
GROUP BY Country
HAVING AVG(Score) > 430;
```

✅ Used to filter grouped results.

---

## WHERE vs HAVING

| Clause | Purpose |
|----------|----------|
| WHERE | Filters rows before grouping |
| HAVING | Filters groups after aggregation |

### Example

```sql
SELECT
    Country,
    AVG(Score) AS Average_Score
FROM Customers
WHERE Score <> 0
GROUP BY Country
HAVING AVG(Score) > 430;
```

---

## SQL Query Writing Order

When writing SQL, we normally write:

```sql
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
```

---

## SQL Execution Order

SQL actually executes queries in the following order:

```sql
FROM
WHERE
GROUP BY
HAVING
SELECT
ORDER BY
```

### Flow Diagram

```text
Database Table
      │
      ▼
     FROM
      │
      ▼
    WHERE
      │
      ▼
   GROUP BY
      │
      ▼
    HAVING
      │
      ▼
    SELECT
      │
      ▼
   ORDER BY
      │
      ▼
 Final Result
```

Understanding this concept helped me understand why aggregate functions cannot be used in the WHERE clause and why HAVING is required after GROUP BY.

---

## Real-World Applications

The concepts covered in this module are commonly used for:

- Customer Analytics
- Sales Reporting
- Financial Reporting
- Business Intelligence Dashboards
- Data Quality Checks
- Operational Reporting
- Data Engineering Foundations

---

## Tools Used

- SQL Server Management Studio (SSMS)
- GitHub
- Data With Baraa SQL Course (YouTube)

---

## Skills Demonstrated

✅ SQL Syntax Fundamentals

✅ Data Retrieval

✅ Query Construction

✅ Result Set Manipulation

✅ Data Filtering

✅ Data Aggregation

✅ Data Exploration

✅ Reporting Queries

✅ Business Data Analysis Foundations

---

## Learning Outcome

This module established my foundation in SQL by teaching me how to retrieve, filter, sort, and summarize data effectively. The concepts learned here serve as the building blocks for more advanced SQL topics, including joins, subqueries, common table expressions (CTEs), window functions, and analytical reporting.

---

### Author

**Thando Zungu**

*A documented SQL learning journey from foundational concepts to advanced data analysis techniques.*
``
