CREATE INDEX idx_order_items_order_product
ON order_items(order_id, product_id);

SHOW INDEX FROM order_items;

EXPLAIN
SELECT *
FROM order_items
WHERE order_id = 1
AND product_id = 1;

EXPLAIN
SELECT *
FROM order_items
WHERE order_id = 1;