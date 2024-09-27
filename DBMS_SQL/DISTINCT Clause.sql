create database Employees;
use Employees;
create table employees(
employee_id int primary key auto_increment,
employee_name varchar(100),
department varchar(100),
salary varchar(100)
);
show tables;
describe employees;
insert into employees values(1,'devika','IT',20000),
							(2,'dev','FOOD',25000),
                            (3,'natasha','IT',30000),
                            (4,'zayn','MECHANICAL',10000),
                            (5,'zara','MARKETING',45000),
                            (11,'ironman','lifesaving',100000000),
							(7,'spiderman','lifesaving',5000000),
                            (8,'dothrake','transportation',250000),
                            (9,'gamora','worldsaving',450000),
                            (10,'tintumon','entertainment',650000);


select*FROM employees;
select distinct employee_name , salary from employees;

