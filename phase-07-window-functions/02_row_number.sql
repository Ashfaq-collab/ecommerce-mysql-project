
select product_id,
name,
price,
ROW_NUMBER() over (order by price desc) as row_numbers from products;