select c.name as categories,
p.name as product,
p.price,
DENSE_RANK() over (partition by p.category_id order by p.price desc) as price_rank 
from products p 
join categories c on p.category_id=c.category_id;