use quanlybanhang;

select distinct quanlybanhang.order.id as 'order_id', quanlybanhang.order.customer_id, quanlybanhang.customer.name
from quanlybanhang.order 
inner join quanlybanhang.customer 
on quanlybanhang.order.customer_id = quanlybanhang.customer.id;

select distinct quanlybanhang.orderdetail.product_id, quanlybanhang.product.name
from quanlybanhang.orderdetail
inner join quanlybanhang.product
on quanlybanhang.orderdetail.product_id = quanlybanhang.product.id;

select * from quanlybanhang.customer 
where quanlybanhang.customer.id not in ( select customer_id from quanlybanhang.order);

select o.id, o.date, sum((p.price*od.quantity)) as total
from quanlybanhang.order o join orderdetail od on o.id = od.order_id
join product p on od.product_id = p.id
group by o.id;