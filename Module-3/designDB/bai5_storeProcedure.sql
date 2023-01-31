delimiter //
create procedure findAllCustomers()
begin
	select * from customers;
end //
delimiter ;
call findAllCustomers();
drop procedure findAllCustomers;
delimiter //
create procedure findAllCustomers()
begin
	select * from customers;
end //
delimiter ;
