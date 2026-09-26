select * from orders;
use ecommerce_db;
DROP PROCEDURE IF EXISTS get_customer_orders;
DELIMITER $$
CREATE PROCEDURE  get_customer_orders(
IN custom_id int)
BEGIN 
SELECT 
order_id,
order_date,
status,
total_amount from orders where customer_id=custom_id;
END $$
DELIMITER ;
CALL get_customer_orders(1);
