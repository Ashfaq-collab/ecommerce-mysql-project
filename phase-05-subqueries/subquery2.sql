select * from products;

select p.product_id,
p.name,
p.price
from products p where p.price =(select max(price) from products);