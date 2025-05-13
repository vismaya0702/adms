create database companny;
use companny;
create table customer(name varchar(25), cid int primary key);
insert into customer(name,cid)values("thahira",100),("arsha",101),("nazrin",102);
create table product(pid int primary key,pname varchar(15),stock int);
insert into product(pid,pname,stock)values(201,"pen",50),(202,"pencil",25);
create table sales(cid int ,foreign key(cid)references customer(cid),pid int, foreign key(pid) references product( pid),quantity int);
