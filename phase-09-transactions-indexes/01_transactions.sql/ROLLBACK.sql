USE ecommerce_db;

SELECT product_id, name, stock_quantity
FROM products
WHERE product_id = 3;

START TRANSACTION;

UPDATE products
SET stock_quantity = stock_quantity + 9
WHERE product_id = 3;

SELECT product_id, name, stock_quantity
FROM products
WHERE product_id = 3;

ROLLBACK;
SELECT product_id, name, stock_quantity
FROM products
WHERE product_id = 3;