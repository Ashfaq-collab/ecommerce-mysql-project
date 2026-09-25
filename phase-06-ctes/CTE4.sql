select * from categories;
select * from products;
-- Products per category
WITH category_counts AS (
SELECT COUNT(product_id) as product_count, category_id 
from products group by category_id)

select c.category_id, 
c.name,
 p.product_count
from categories c 
left join category_counts p on c.category_id=p.category_id
where p.product_count>2;