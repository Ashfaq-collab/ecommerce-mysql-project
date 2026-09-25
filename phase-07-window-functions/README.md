  Phase 7 — Window Functions

   Objective

The goal of Phase 7 was to learn and practice **SQL Window Functions** using the e-commerce database.

Window functions allow calculations across related rows while still keeping the individual rows in the result.

   Topics Covered

* `RANK()`
* `ROW_NUMBER()`
* `DENSE_RANK()`
* `OVER()`
* `ORDER BY` inside window functions
* `PARTITION BY`
* Running totals
* Ranking products by price
* Ranking products within each category

   Concepts Practiced

    1. RANK()

Used `RANK()` to assign rankings to rows based on a specified ordering.

Example use case:

* Rank products by price.

    2. ROW_NUMBER()

Used `ROW_NUMBER()` to assign a unique sequential number to each row.

Example use case:

* Number products from highest price to lowest price.

    3. DENSE_RANK()

Used `DENSE_RANK()` to rank rows while handling equal values without gaps in ranking numbers.

    4. PARTITION BY

Used `PARTITION BY` to restart ranking for each group.

Example:

* Rank products by price separately within each category.

    5. Running Total

Used:

```sql
SUM(total_amount) OVER (ORDER BY order_date)
```

to calculate the cumulative order amount over time.

   Practical Queries

During this phase, queries were created for:

* Ranking products by `product_id`
* Ranking products by price
* Numbering products by price
* Dense ranking products by price
* Ranking products within each category
* Calculating running order totals

   Key Learning

The main difference between normal aggregate functions and window functions is:

**`GROUP BY` reduces multiple rows into one row per group, while window functions keep the individual rows and perform calculations across them.**

   Project Progress

After completing this phase, the project has covered:

* Database design
* Table creation
* Constraints
* Seed data
* JOINs
* Aggregation
* Subqueries
* `EXISTS` / `NOT EXISTS`
* CTEs
* Window Functions

**Phase 7 completed successfully.**
