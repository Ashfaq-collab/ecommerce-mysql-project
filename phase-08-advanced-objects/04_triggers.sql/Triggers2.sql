select * from order_items;
select * from products;
DROP TRIGGER IF EXISTS before_order_item_insert;
delimiter $$
create trigger before_order_item_insert
before insert on order_items
for each row
begin
declare available_stock int;
select stock_quantity
into available_stock 
from products 
where product_id=NEW.product_id;
if new.quantity> available_stock then
signal sqlstate '45000'
set MESSAGE_TEXT = 'Not enough stock available';
end if;
end $$
delimiter ;

INSERT INTO order_items
(order_id, product_id, quantity, unit_price)
VALUES
(27, 3, 20, 99999);


