create database COMPANY;
USE COMPANY;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id)
        REFERENCES department (dept_id),
    salary INT,
    hired_date DATE,
    email VARCHAR(100)
);

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);
 insert into employees values(1,'ironman', 101,250000,'2000-1-2','marvelsironman@gmail.com'),
                             (2,'superman',101,300000,'2002-11-2','superman_marvels@gmail.com'),
                             (3,'batman',101,71000,'1987-4-6','disneybatman@gmail.com'),
                             (4,'thor',104,120000,'2002-10-25','hammer@gmail.com'),
                             (5,'rocket',105,466000,'2010-2-6','guardian@gmail.com'),
                             (6,'stickman',106,74000,'2016-5-12',null),
                             (7,'wonderwomen',104,560000,'2011-5-10','womenwonder@gmail.com'),
                             (8,'catgirl',108,65000,'2020-8-10',null),
                             (9,'elsa',110,90000,'2013-5-7',null),
                             (10,'anna',110,680000,'2015-5-7','desneyprincesss@gmail.com');
insert into department values(101,'FLY'),
                              (104,'POWER'),
                              (105,'INTELLIGENCE'),
                              (106,'FLOAT'),
                              (108,'SAVER'),
                              (110,'ROYALFAM');
                              
SELECT 
    *
FROM
    employees
ORDER BY salary DESC
LIMIT 5;
SELECT 
    *
FROM
    employees
WHERE
    emp_name LIKE 'a%';
SELECT 
    *
FROM
    employees
WHERE
    dept_id IN (101 , 106, 110);
SELECT 
    emp_id, emp_name
FROM
    employees
WHERE
    email IS NULL;
SELECT 
    emp_id, emp_name
FROM
    employees
WHERE
    email IS NOT NULL;
SELECT 
    *
FROM
    employees
WHERE
    salary BETWEEN 50000 AND 100000;
SELECT 
    emp_id, emp_name
FROM
    employees
WHERE
    emp_name REGEXP 'b.t';
SELECT 
    employees.emp_name, department.dept_name
FROM
    employees
        JOIN
    department ON employees.dept_id = department.dept_id;

SELECT 
    employees.emp_name, department.dept_name
FROM
    employees
        LEFT JOIN
    department ON employees.dept_id = department.dept_id
WHERE
    employees.dept_id IS NULL;

SELECT 
    emp_id, emp_name, salary, email
FROM
    employees
WHERE
    dept_id = 101
        AND salary BETWEEN 60000 AND 90000
        AND email IS NOT NULL;
  
SELECT 
    emp_id, emp_name, salary
FROM
    employees
ORDER BY salary DESC
LIMIT 5 OFFSET 5;







