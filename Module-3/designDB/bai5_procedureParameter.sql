delimiter //
create procedure getCusByID(in customerID int(11))
begin
	select * from customers where customerNumber = customerID;
end //
delimiter ;
call getCusByID(495);

delimiter //
create procedure countCustomerByCity(
in getCity varchar(50),
out totalCustomer int(50))
begin
	select count(customerNumber)
    into totalCustomer
    from customers
    where city = getCity;
end //
delimiter ;

call countCustomerByCity('Nantes', @totalCustomer);
select @totalCustomer as total;

delimiter //
create procedure setCounter(
inout counter int(50),
in counter_in int(50))
begin 
	set counter = counter + counter_in;
end //
delimiter ;

set @counter = 2;
call setCounter(@counter, 1);
call setCounter(@counter, 2);
call setCounter(@counter, 5);
select @counter; -- 10