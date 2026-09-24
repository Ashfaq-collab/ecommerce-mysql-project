USE ecommerce_db;

select * from products;

select p.product_id,
p.name,
p.price
from products p where p.price >(select avg(price) from products group by p.product_id);
