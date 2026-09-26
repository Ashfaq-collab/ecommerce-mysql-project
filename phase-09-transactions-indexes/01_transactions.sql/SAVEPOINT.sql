USE ecommerce_db;

START TRANSACTION;

-- Change 1
UPDATE products
SET stock_quantity = stock_quantity + 3
WHERE product_id = 3;

SAVEPOINT stock_change;

-- Change 2
UPDATE products
SET stock_quantity = stock_quantity - 2
WHERE product_id = 4;

-- Check both products
SELECT product_id, name, stock_quantity
FROM products
WHERE product_id IN (3, 4);

-- Undo only Change 2
ROLLBACK TO SAVEPOINT stock_change;

-- Check again
SELECT product_id, name, stock_quantity
FROM products
WHERE product_id IN (3, 4);

COMMIT;