
select c.customer_id 
from customers c where not exists(select * from orders o where o.customer_id=c.customer_id);