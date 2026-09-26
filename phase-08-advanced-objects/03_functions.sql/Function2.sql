delimiter $$
drop function if exists calculate_final_amount;
create function calculate_final_amount(amount int)
returns decimal(10,2)
deterministic
begin 
declare final_amount decimal(10,2);
set final_amount=amount-calculate_discount(amount);
return final_amount;
end $$
delimiter ;
select calculate_final_amount(120000);
