CREATE INDEX idx_order_items_product_id
ON order_items(product_id);

EXPLAIN
SELECT *
FROM order_items
WHERE product_id = 1;