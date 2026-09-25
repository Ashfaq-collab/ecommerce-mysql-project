select product_id,
name,
price,
DENSE_RANK() over (order by price desc) as price_rank from products;