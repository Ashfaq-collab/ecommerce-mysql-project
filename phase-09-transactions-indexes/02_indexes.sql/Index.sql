USE ecommerce_db;

SHOW INDEX FROM orders;
EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 1;

CREATE INDEX idx_orders_customer_id
ON orders(customer_id);