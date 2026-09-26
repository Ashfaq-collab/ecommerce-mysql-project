USE ecommerce_db;

SELECT product_id, name, stock_quantity
FROM products
WHERE product_id = 3;


START TRANSACTION;

UPDATE products
SET stock_quantity = stock_quantity - 2
WHERE product_id = 3;

SELECT product_id, name, stock_quantity
FROM products
WHERE product_id = 3;

COMMIT;
SELECT product_id, name, stock_quantity
FROM products
WHERE product_id = 3;

ROLLBACK;