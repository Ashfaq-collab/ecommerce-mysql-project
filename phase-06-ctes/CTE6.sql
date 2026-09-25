select * from customers;
select * from orders;

-- Two CTEs together
With customer_orders as (
select customer_id,
count(order_id) as order_count 
from orders 
group by customer_id),

customer_spending as (
select customer_id,
sum(total_amount) as total_spent 
from orders
group by customer_id)

SELECT c.customer_id,
       c.first_name,
       c.last_name,
       o.order_count,
       s.total_spent 
FROM customers c
LEFT JOIN customer_orders o ON c.customer_id = o.customer_id
LEFT JOIN customer_spending s ON c.customer_id = s.customer_id;
