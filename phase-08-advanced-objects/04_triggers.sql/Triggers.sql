select * from products;
select * from orders;

delimiter $$
create trigger after_order_item_insert
after insert on order_items
for each row
begin 
update products 
set stock_quantity= stock_quantity-new.quantity
where product_id=new.product_id;
end $$
delimiter ;
SELECT product_id, name, stock_quantity
FROM products
WHERE product_id = 3;

START TRANSACTION;

INSERT INTO order_items
(order_id, product_id, quantity, unit_price)
VALUES
(27, 3, 2, 99999);

SELECT product_id, name, stock_quantity
FROM products
WHERE product_id = 3;

ROLLBACK;


