select * from customers;
select * from orders;

create view customer_order_details as 
select o.order_id,
c.first_name,
c.last_name,
o.order_date,
o.status,
o.total_amount from customers c 
left join orders o on c.customer_id=o.customer_id; 