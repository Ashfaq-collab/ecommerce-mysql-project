select * from orders;

select order_id,
order_date,
total_amount,
SUM(total_amount) over(order by order_date) as running_total from orders;