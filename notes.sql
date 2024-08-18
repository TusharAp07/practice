create database mlp;
show database;
use mlp;

create table client_master(
                            client_no varchar(6),
                            client_name varchar(20),
                            add1 varchar(20),
                            add2 varchar(20),
                            city varchar(20),
                            pincode int,
                            State varchar(15),
                            Baldue numeric(4,2));

create table salesman_master(
                            salesman_no numeric,
                            sal_name varchar(20),
                            add1 varchar(20),
                            add2 varchar(20),
                            city varchar(20),
                            pincode int,
                            State varchar(15),
                            salAmt int,
                            TgtToGet int,
                            YtdSales int,
                            Remark int);

create table Product_master(
                            product_no varchar(6),
                            description varchar(20),
                            profit_percent numeric(4,2),
                            unit_measure varchar(20),
                            qty_onhand numeric(8),
                            reorder_lvl numeric(8),
                            sell_price varchar(8,2),
                            coast_price numeric(8,2));

insert into client_master values(0001,'Ivan Byross','Mumbai',400054,'Maharatra',15000);
insert into client_master values(0002,'Mamata Muzumber','Madras',780001,'Tamilnadu',0);
insert into client_master values(0003,'Chhaya Bankar','Mumbai',560001,'Maharatra',5000);
insert into client_master values(0004,'Ashwini Joshi','Bangalore',400060,'Karnataka',0);
insert into client_master values(0005,'Hansel Colaco','Mumbai',560050,'Maharatra',2000);
insert into client_master values(0006,'Deepak Sharma','Mangalore',400060,'Karnataka',0);

insert into Product_master values('P00001','T-shirts',5,'piece',200,50,350,250);
insert into Product_master values('P00002','Shirts',6,'piece',150,50,500,350);
insert into Product_master values('P00003','Cotten Jeans',5,'piece',100,20,600,450);
insert into Product_master values('P00004','Jeans',5,'piece',100,20,750,500);
insert into Product_master values('P00005','Trousers',2,'piece',150,50,850,550);
insert into Product_master values('P00006','Pull Overs',2.5,'piece',80,30,700,450);
insert into Product_master values('P00007','Denime Shirts',4,'piece',100,40,350,250);
insert into Product_master values('P00008','Lycra Tops',5,'piece',70,30,300,175);
insert into Product_master values('P00009','Skirts',5,'piece',75,30,450,300);

insert into salesman_master values('00001','Aman','A/14','Worali','Mumbai',400002,'Maharatra',3000,100,50,'good');
insert into salesman_master values('00002','Omkar','65','Nariman','Mumbai',400001,'Maharatra',3000,200,100'good');
insert into salesman_master values('00003','Raj','P-7','Bandra','Mumbai',400032,'Maharatra',3000,200,100,'good');
insert into salesman_master values('00004','Asish','A/5','Juhu','Mumbai',400044,'Maharatra',3500,200,150,'good');

--select query
select client_name,Baldue from client_master;

--where query
select * from client_master where Baldue=0;

select * from client_master where Baldue > 1000;

select client_name from client_master where Baldue > 1000;

--order by query
select * from client_master order by client_name;
select * from client_master order by client_name desc;

--like query
select * from client_master where name like 'c%'; --start with
select * from client_master where name like '%c'; --end with
select * from client_master where name like '_c%'; --start with second character
select * from client_master where name like '%c_'; --end with second character
select * from client_master where name like '%c%'; 

--display all cities
select distinct city from client_master;

--functions
select 5*5 'mul';
select 5+5 'add';
select 5-5 'sub';
select 5/5 'div';

--mathmatical functions
select (*) "Total Clients" from client_master;
select max(Baldue) "max Bal" from client_master;
select min(Baldue) "min Bal" from client_master;
select avg(Baldue) "avg Bal" from client_master;
select sum(Baldue) "sum Bal" from client_master;
select floor(3.33);
select floor(3.99);
select ceil(3.33);
select ceil(3.99);
select round(3.33);
select round(3.99);

--delete record
delete from client_master;
delete from client_master where name="chhaya";

--Update record
update client_master set city='Surat';
update client_master set city='Mumbai' where name='chhaya';
