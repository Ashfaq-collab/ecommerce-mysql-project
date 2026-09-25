select * from customers;
select * from orders;
-- Order details using a CTE
with delivered as (
select o.*, 
c.first_name,
c.last_name from orders o
join customers c on o.customer_id=c.customer_id)

select d.order_id,
 d.first_name,
d.last_name,
d.order_date,
d.total_amount,
d.status
from delivered d where d.status="DELIVERED";