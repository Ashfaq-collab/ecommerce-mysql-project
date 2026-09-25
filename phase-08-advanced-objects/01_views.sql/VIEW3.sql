select * from products;
select * from categories;

create view product_category_details as 
select p.product_id,
p.name,
c.name,
p.price,
p.stock_quantity from products p 
left join categories c on p.category_id=c.category_id; 