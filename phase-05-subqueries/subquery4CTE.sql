select * from customers;
select * from orders;


with total_spending as(
select c.customer_id, 
           c.first_name, 
           c.last_name, 
           SUM(o.total_amount) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)

select c.first_name,
c.last_name 
from total_spending c where total_spent > (select avg(total_amount) from orders)