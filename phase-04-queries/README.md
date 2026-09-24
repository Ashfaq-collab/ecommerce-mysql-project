Phase 4 — `phase-04-queries/README.md

  Phase 4 — JOINs and Aggregation

   Objective

Practice retrieving and analyzing data from multiple related tables using JOINs and aggregate functions.

   Topics Covered

- INNER JOIN
- LEFT JOIN
- Multiple-table JOINs
- GROUP BY
- HAVING
- COUNT()
- SUM()
- AVG()
- Finding records with no matching relationship

   JOIN Practice

The following relationships were practiced:

- Customers → Orders
- Orders → Order Items
- Order Items → Products
- Products → Categories
- Products → Suppliers
- Customers → Addresses

   Aggregation Practice

Queries were created to calculate:

- Number of orders per customer
- Total spending per customer
- Number of products in each category
- Total revenue by category
- Average product price by category

   HAVING Practice

Used `HAVING` to filter grouped results, including:

- Customers with more than one order
- Categories containing more than two products

   LEFT JOIN Practice

Used `LEFT JOIN` to find records without matching records in another table:

- Customers who have never placed an order
- Products that have never been ordered

   Key Learning

`WHERE` filters rows before grouping, while `HAVING` filters groups after aggregation.

`LEFT JOIN` is useful when we need to keep all records from the left table, including those that have no matching record in the right table.

   Outcome

Completed basic JOIN and aggregation exercises and gained practical experience querying data across multiple related tables.