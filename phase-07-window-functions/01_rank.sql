select * from products;

select product_id,
name,
price,
RANK() over (order by price desc) as price_rank from products;