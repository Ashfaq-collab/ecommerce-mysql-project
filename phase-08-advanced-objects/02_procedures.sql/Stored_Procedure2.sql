select * from orders;
DROP PROCEDURE IF EXISTS get_customer_spending;
DELIMITER $$
CREATE PROCEDURE get_customer_spending(
IN id int)
BEGIN 
WITH total_spending AS(
SELECT customer_id, 
SUM(total_amount) as total_spent from orders group by customer_id)
select c.customer_id,
c.first_name,
c.last_name,
t.total_spent from customers c 
join total_spending t on c.customer_id=t.customer_id
where c.customer_id=id;
END $$
DELIMITER ;
CALL get_customer_spending(1)


