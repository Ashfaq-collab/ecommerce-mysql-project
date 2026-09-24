  Phase 5 — Subqueries and EXISTS

   Objective

Practice using subqueries to solve SQL problems that require comparing data with calculated values or checking whether related records exist.

   Topics Covered

- Scalar subqueries
- Subqueries with `IN`
- Subqueries with aggregate functions
- `EXISTS`
- `NOT EXISTS`
- Common Table Expressions (basic introduction)
- Comparing values with calculated results

   Subquery Practice

The following problems were practiced:

- Products with a price greater than the average product price
- Finding the most expensive product
- Finding customers who have placed at least one order
- Finding products that have been ordered
- Finding customers whose spending is above the average
- Finding customers with orders using `EXISTS`
- Finding customers without orders using `NOT EXISTS`

   Key Concepts Learned

    Scalar Subquery

A scalar subquery returns a single value and can be used in conditions.

Example:

```sql
WHERE price > (
    SELECT AVG(price)
    FROM products
)