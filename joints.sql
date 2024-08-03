select * from customer

select * from sales

 --- left join 

select s.order_id,s.sales,s.customer_id,c.customer_id,c.age,c.postal_code from customer as c
left join sales as s on c.customer_id=s.customer_id

 --- right join

select s.order_id,s.sales,s.customer_id,c.customer_id,c.age,c.postal_code from sales as s
right join customer as c on c.customer_id=s.customer_id


--- full join

select s.order_id,s.sales,s.customer_id,c.customer_id,c.age,c.postal_code from sales as s
full join customer as c on c.customer_id=s.customer_id


 --- inner join

select c.customer_id,c.customer_name,c.age,s.order_id,c.customer_id,s.product_id from customer as c 
inner join sales as s on c.customer_id=s.customer_id

 --- product and sales
   -- inner join
	
select * from product
select * from sales

select p.product_id,p.category,s.order_id,s.customer_id,s.product_id from product as p
inner join sales as s on s.product_id=p.product_id

	
 --- join 3 tables

select s.order_id,s.ship_date,s.customer_id,s.quantity,
	c.customer_id,c.age,c.postal_code,
	p.product_id,p.product_name from sales as s
join product as p on p.product_id=s.order_id
join customer as c on  s.customer_id=c.customer_id

 











	

