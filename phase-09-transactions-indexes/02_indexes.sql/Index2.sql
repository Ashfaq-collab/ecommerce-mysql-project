CREATE INDEX idx_orders_customer_status
ON orders(customer_id, status);

EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 1
AND status = 'DELIVERED';