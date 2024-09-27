create database JOB;
USE JOB;
create table jobs(
job_id int ,
job_title varchar(100) default '',
min_salary int default 8000 ,
max_salary int default null 
);
