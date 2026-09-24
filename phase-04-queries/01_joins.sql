USE ecommerce_db;
select * from orders;
select * from customers;

select order_id,
c.first_name,
c.last_name,
order_date,
status,
total_amount from orders o join customers c on o.customer_id=c.customer_id;


select * from orders;
select * from customers;
select * from order_items;
select * from products;

select o.order_id,
		c.first_name,
		c.last_name,
		p.name,
		oi.quantity,
		oi.unit_price 
from orders o join customers c on c.customer_id=o.customer_id
join order_items oi on oi.order_id = o.order_id
join products p on p.product_id = oi.product_id;


select * from products;
select * from product_suppliers;
select * from suppliers;

select 	p.name as product_name,
		s.name as supplier_name,
		ps.supplier_price
from products p join product_suppliers ps on p.product_id=ps.product_id
join suppliers s on s.supplier_id=ps.supplier_id;


select * from customers;
select * from addresses;

select  c.first_name,
		c.last_name,
		a.address_type,
		a.city,
		a.state,
		a.country
from addresses a join customers c on a.customer_id=c.customer_id;

























