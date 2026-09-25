  Phase 6 — Common Table Expressions (CTEs)

   Objective

Learn how to use Common Table Expressions (CTEs) to organize SQL queries, improve readability, and break complex queries into smaller steps.

   Topics Covered

- Common Table Expressions (CTEs)
- The `WITH` clause
- Naming a CTE
- Using a CTE in a main query
- CTEs with aggregate functions
- CTEs with filtering
- Joining CTEs
- Using multiple CTEs in one query

   Practice Problems

The following problems were practiced:

- Finding products priced above the average product price
- Calculating total spending per customer
- Finding customers whose spending exceeds a given amount
- Counting products in each category
- Filtering delivered orders using a CTE
- Combining multiple CTEs to analyze customer orders and spending

   Key Concepts Learned

    What is a CTE?

A Common Table Expression is a named result set defined using the `WITH` clause. It can be referenced by the SQL statement that immediately follows it.

    CTE Syntax

```sql
WITH cte_name AS (
    SELECT ...
)
SELECT *
FROM cte_name;
```

    Benefits of CTEs

- Make queries easier to read
- Break complex queries into logical steps
- Allow intermediate results to be referenced by name
- Help organize queries involving joins and aggregations

   Key Learning

CTEs provide a readable way to structure SQL queries.

They can be used with `SELECT`, `JOIN`, `WHERE`, and aggregate functions.

A CTE is available only to the statement immediately following its definition; it does not create a permanent database table.

   Outcome

Practiced writing queries using single and multiple CTEs, including queries with joins, filtering, and aggregation.

This phase builds on the JOIN, aggregation, and subquery concepts learned in earlier phases.