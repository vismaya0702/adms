create database store;
use store;
create table customer(cust_id int primary key,name varchar(40));
insert into customer values(1,'ABC'),(2,'DEF'),(3,'GHI');
create table sales(cust_id int, foreign key (cust_id) references customer(cust_id),pid int,foreign key (pid) references product(pid));
insert into sales values (1,101),(1,102),(2,101);
select customer.cust_id,customer.name from customer join sales on customer.cust_id=sales.cust_id;
drop table sales;
create table product(pid int primary key,product varchar(20));
insert into product values(101,'pencil'),(102,'pen'),(103,'eraser');
 select customer.name,product.product from customer join sales on customer.cust_id=sales.cust_id
 join product on sales.pid=product.pid;
 select product.product,count(customer.cust_id)from customer join sales on customer.cust_id=sales.cust_id join product on sales.pid=product.pid group by product.pid having count(customer.cust_id)>=2;


