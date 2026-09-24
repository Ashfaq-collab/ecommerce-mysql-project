select * from customers;
select * from orders;

select c.first_name,
c.last_name 
from customers c where customer_id in(select customer_id from orders);
