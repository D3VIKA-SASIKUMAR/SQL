/*--Write a SQL statement to create a simple table countries including columns
country_id,country_name and region_id.*/


create database COUNTRY;
use country;
create table countries(
country_id int primary key  auto_increment,
country_name varchar(100),
region_id int 
);