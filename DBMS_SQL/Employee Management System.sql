CREATE DATABASE EMPLOYEE_MANAGEMENT_SYSTEM;
USE EMPLOYEE_MANAGEMENT_SYSTEM;
create table Employees (
employee_id int  primary key auto_increment,
first_name varchar(50),
last_name varchar(50),
salary int,
department varchar(100)
);
show tables;
describe employees;

insert into employees values(1,'devika','sasikumar',20000,'IT'),
							(2,'dev','k',25000,'IT'),
                            (3,'natasha','nathen',30000,'food qualifier'),
                            (4,'zayn','ak',10000,'IT'),
                            (5,'zara','shelly',45000,'hospital administration');
select*from employees;
alter table employees
add date_of_joining date ;
 
 UPDATE employees 
SET salary = 60000 
WHERE department = 'IT';

select*from employees 
WHERE salary > 60000;

drop table employees;




