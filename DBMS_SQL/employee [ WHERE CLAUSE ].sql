create database Employeees;
use Employeees;
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
                            (5,'zara','MARKETING',45000);

select*FROM employees;



select *from employees where department ='IT';   
select *from employees where department ='IT' AND salary > 10000;
select *from employees where department ='IT' OR salary >30000;



 
                         
                            