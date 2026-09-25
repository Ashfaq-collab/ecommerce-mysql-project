select * from customers;
select * from orders;

create view customer_spending as 
select customer_id,
sum(total_amount) as total_spent 
from orders group by customer_id;

select c.customer_id,
c.first_name,
c.last_name,
o.total_spent
from customers c 
join customer_spending o on c.customer_id=o.customer_id; 