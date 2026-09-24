USE ecommerce_db;

select * from customers;
select * from orders;

select c.customer_id,
	c.first_name,
    	c.last_name,
	count(*) as order_count
from customers c join orders o on o.customer_id=c.customer_id
group by o.customer_id;


select * from customers;
select * from orders;

select c.customer_id,
	c.first_name,
    	c.last_name,
    	sum(o.total_amount) as total_spent
from customers c join orders o on o.customer_id=c.customer_id
group by o.customer_id;


select * from categories;
select * from products;

select c.name,
	count(p.product_id) as product_count
from categories c join products p on  p.category_id=c.category_id
group by p.category_id;


select * from categories;
select * from products;
select * from order_items;

select c.name,
	sum(o.quantity*o.unit_price) as total_earning
from products p join order_items o on p.product_id=o.product_id
join categories c on p.category_id=c.category_id
group by p.category_id;


select * from categories;
select * from products;

select c.name,
	avg(p.price) as average_price
from categories c join products p on p.category_id=c.category_id
group by p.category_id; 


select * from customers;
select * from orders;

select  c.customer_id,
        c.first_name,
	c.last_name,
	count(*) as order_count
from customers c join orders o on o.customer_id=c.customer_id
group by o.customer_id having count(*)>1; 

select * from categories;
select * from products;

select c.name,
	count(*) as product_count
from categories c join products p on p.category_id=c.category_id
group by p.category_id having count(*)>2;


select * from customers;
select * from orders;

SELECT c.customer_id,
       c.first_name,
       c.last_name,
       o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


select * from products;
select * from order_items;

SELECT p.product_id,
		p.name
FROM products p
LEFT JOIN order_items o ON p.product_id = o.product_id
WHERE o.order_id IS NULL;




























		