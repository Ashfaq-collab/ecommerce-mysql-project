use ecommerce_db;
select * from orders;
DELIMITER $$
create function calculate_discount(amount int)
returns decimal(10,2)
deterministic
begin 
declare discount decimal(10,0);
if amount>=100000 then
set discount=amount*0.10;
elseif amount>=50000 then
set discount = amount*0.05;
else
set discount=0;
end if;
return discount;
end$$
DELIMITER ;

select calculate_discount(120000);
