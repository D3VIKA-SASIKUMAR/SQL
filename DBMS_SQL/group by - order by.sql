create database sale;
use sale;
create table sales(
sale_id int primary key,
product_name varchar(100),
quantity int 
);
insert into sales values( 1, 'washing machine',7),
                        (2,'tv',9),
                        (3,'refrigerator',11),
                        (4,'air fryer',5),
                        (5,'oven',13),
                        (6,'washing machine',10),
                        (7,'tv',14),
                        (8,'air fryer',20),
                        (9,'oven',30),
                        (10,'ipad',25),
                        (11,'headphones',10);
select *from sales;
select product_name
from sales 
group by product_name
order by product_name asc;