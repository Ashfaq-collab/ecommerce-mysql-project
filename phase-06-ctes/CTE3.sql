select * from customers;
select * from orders;

-- Customers with spending above ₹100,000
WITH customer_spending AS (
SELECT sum(total_amount) as total_spent, customer_id FROM orders GROUP BY customer_id
)
SELECT c.customer_id,
c.first_name,
c.last_name,
cs.total_spent
FROM customers c 
LEFT JOIN  customer_spending cs on c.customer_id=cs.customer_id
WHERE cs.total_spent>100000;