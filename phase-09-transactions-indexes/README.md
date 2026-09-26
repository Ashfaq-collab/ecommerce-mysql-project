 Phase 9 — Transactions, Indexes & Query Optimization

 Objective

The goal of Phase 9 was to understand how MySQL manages transactions and how indexes can improve query performance.

This phase focused on:

- Transactions
- COMMIT
- ROLLBACK
- SAVEPOINT
- Indexes
- Composite Indexes
- EXPLAIN
- Query execution plans

---

 Topics Covered

 1. Transactions

Learned how to group multiple SQL operations into a transaction.

Basic transaction structure:

```sql
START TRANSACTION;

-- SQL operations

COMMIT;

If the changes should be cancelled:

ROLLBACK;
2. COMMIT

COMMIT permanently saves the changes made during the transaction.

Example:

START TRANSACTION;

UPDATE products
SET stock_quantity = stock_quantity - 2
WHERE product_id = 3;

COMMIT;

After COMMIT, the change becomes permanent.

3. ROLLBACK

ROLLBACK cancels changes made during the current transaction.

Example:

START TRANSACTION;

UPDATE products
SET stock_quantity = stock_quantity - 2
WHERE product_id = 3;

ROLLBACK;

The stock change is cancelled.

4. SAVEPOINT

Learned how to create a point inside a transaction that can be used for partial rollback.

Example:

START TRANSACTION;

UPDATE products
SET stock_quantity = stock_quantity + 3
WHERE product_id = 3;

SAVEPOINT stock_change;

UPDATE products
SET stock_quantity = stock_quantity - 2
WHERE product_id = 4;

ROLLBACK TO SAVEPOINT stock_change;

COMMIT;

In this example:

The first update is kept.
The second update is rolled back.
The transaction is then committed.
5. Indexes

Learned how indexes can help MySQL locate rows more efficiently.

Created indexes such as:

CREATE INDEX idx_orders_customer_id
ON orders(customer_id);

And:

CREATE INDEX idx_orders_customer_status
ON orders(customer_id, status);
6. Composite Indexes

Learned how an index can contain multiple columns.

Example:

CREATE INDEX idx_order_items_order_product
ON order_items(order_id, product_id);

This index can help queries such as:

WHERE order_id = 1

and:

WHERE order_id = 1
AND product_id = 1
7. Leftmost-Prefix Rule

A composite index:

(order_id, product_id)

is organized around the first column:

order_id → product_id

Therefore:

WHERE order_id = 1

can use the index.

WHERE order_id = 1
AND product_id = 1

can also use the index.

But a query using only:

WHERE product_id = 1

is not the intended lookup pattern for this composite index.

For product-only searches, a separate index was created:

CREATE INDEX idx_order_items_product_id
ON order_items(product_id);
8. EXPLAIN

Learned how to use EXPLAIN to inspect how MySQL executes a query.

Example:

EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 1;

Important EXPLAIN columns studied:

type
possible_keys
key
key_len
rows
filtered
Extra
9. Checking Index Usage

Used EXPLAIN to verify whether MySQL selected an index.

Example:

EXPLAIN
SELECT *
FROM order_items
WHERE product_id = 1;

The execution plan showed:

key = idx_order_items_product_id

This confirmed that MySQL selected the created product index for the query.

Indexes Created

The following indexes were created and tested during this phase:

idx_orders_customer_id
idx_orders_customer_status
idx_order_items_order_product
idx_order_items_product_id


































