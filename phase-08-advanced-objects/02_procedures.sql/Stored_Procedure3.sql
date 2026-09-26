select * from categories;

DROP PROCEDURE IF EXISTS get_products_by_category;
DELIMITER $$
create procedure get_products_by_category(
in id int)
begin 
select c.name as category_name,
p.product_id,
p.name as product_name,
p.price,
p.stock_quantity from products p 
join categories c on p.category_id=c.category_id 
where p.category_id=id;
END $$
DELIMITER ;
CALL get_products_by_category(3);

