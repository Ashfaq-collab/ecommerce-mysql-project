select * from customers;
select * from orders;

-- Customer spending
WITH customer_spending AS (
SELECT sum(total_amount) as total_spent, customer_id from orders group by customer_id
)
SELECT c.customer_id,
c.first_name,
c.last_name,
cs.total_spent
from customers c 
left join  customer_spending cs on c.customer_id=cs.customer_id;