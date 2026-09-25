use ecommerce_db;

Select * from products;

-- Products above average price
WITH avg_price AS (
select avg(price) as avgprice 
from products)
SELECT product_id,
name,
price from products p cross join avg_price a 
where p.price>a.avgprice; 
