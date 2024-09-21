create database E_COMMERCE;
USE E_COMMERCE;
create table Customer(
customer_id int primary key auto_increment,
customer_name varchar(100) not null,
email varchar(100) unique not null,
phone int not null
);

create table Product(
product_id int primary key auto_increment,
product_name varchar(100) not null,
price decimal not null,
stock int not null
);

create table Orders(
order_id int primary key auto_increment,
customer_id int not null,
foreign key (customer_id) references Customer(customer_id),
order_date date not null,
total_amount decimal not null
);

create table OrderDetails(
order_detail_id int primary key auto_increment,
order_id int not null,
foreign key(order_id)references Orders(order_id),
product_id int not null,
foreign key(product_id) references Product(product_id),
quantity int not null,
price decimal not null
);
show tables;
describe customer;
describe product;
describe orders;
describe orderdetails;

alter table OrderDetails
add specs int;
describe orderdetails;

alter table  OrderDetails
add review varchar(100)
 AFTER price ;
 
 describe orderdetails;
 
 alter table OrderDetails 
 modify specs varchar(50);
  describe orderdetails;
  
  alter table OrderDetails
  drop  column specs,
  drop column review;
   describe orderdetails;
   
   alter table
   OrderDetails
   CHANGE COLUMN 
   price amount int; 
   describe orderdetails;
   
alter table order_details
RENAME TO ORDERSs;


DROP table orderss;

create table order_detail(
order_details_id int primary key auto_increment,
order_id int not null,
foreign key(order_id)references Orders(order_id),
product_id int not null,
foreign key(product_id) references Product(product_id),
quantity int not null,
price decimal not null
);
show tables;
insert into Customer values(45,'DEVIKA','DEVIKA.SUJEETHA@GMAIL.COM',8281);
describe Customer;
select*from Customer;
update Customer
set phone =828153
where customer_id=45;
alter table Customer
modify phone varchar(10);

update Customer
set phone ='8281535237'
where customer_id=45;
insert into Customer values(56,'DEV','DEVIKASASIKUMAR@GMAIL.COM','1234567898');

