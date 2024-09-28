create database BANK;
USE BANK;
CREATE TABLE LOANS(
account_number int primary key ,
customer_name varchar(100),
loan_amount decimal (10,2) ,
instalments int ,
int_rate decimal(5,2),
start_date date,
interest decimal(10,2)
);


insert into loans values(1,'R.K.GUPTA',300000,36,12.00,'2009-7-19',1200),
					    (2,'S.P.SHARMA',500000,48,10.00,'2008-3-22',1800),
                        (3,'K.P.JAIN',300000,36,NULL,'2007-3-8',1600),
                        (4,'M.P.YADAV',800000,60,10.00,'2008-12-6',2250),
                        (5,'S.P.SINHA',200000,36,12.50,'2010-1-3',4500),
                        (6,'P.SHARMA',700000,60,12.50,'2008-6-5',3500),
                        (7,'K.S.DHALL',500000,48,NULL,'2008-3-5',3800);
                        
SELECT account_number,customer_name,loan_amount from loans;

select customer_name , loan_amount,start_date,interest,int_rate 
from loans where instalments < 40;

select account_number,loan_amount from loans where start_date < '2009-4-1';
select int_rate from loans where start_date > '2009-4-1';
SELECT *
FROM Loans
WHERE Int_Rate IS NULL;

SELECT *
FROM Loans
WHERE Int_Rate IS not  NULL;

SELECT DISTINCT Loan_Amount
FROM Loans;

select distinct instalments from loans;

select * from loans where start_date > '2008-12-31' and instalments > 36;


SELECT customer_Name, Loan_Amount
FROM Loans
WHERE Instalments != 36 OR Instalments IS NULL;

select customer_name ,loan_amount from loans 
where loan_amount <500000 or int_rate > 12;

select*from loans where loan_amount between 400000 and 500000.17;

select*from loans where int_rate between 11.00 and 12.00;

select customer_name , loan_amount from loans
 where instalments in (24,36, 48);

select account_number,customer_name,loan_amount from loans
 where customer_name  like '%SHARMA';
 
 select account_number,customer_name ,loan_amount from loans 
 where customer_name like '%a';
 
 select account_number,customer_name,loan_amount from loans 
 where customer_name like '%a%';
 
 select account_number,customer_name,loan_amount from loans
 where customer_name not like '%p%';
 
 select account_number,customer_name,loan_amount from loans
 where customer_name like '%a_';
 
 select * from loans
 order by loan_amount asc;
 
 select* from loans
 order by start_date desc;
 
update loans 
set int_rate = 11.50
where int_rate = null;

update loans 
set int_rate = int_rate + 0.5
where loan_amount >400000;

UPDATE loans
SET Interest = (Loan_Amount * Int_Rate * Instalments) / (12 * 100);

delete  from loans where customer_name = 'K.P.JAIN';

alter table loans
add phone_number int ;
alter table loans
change column  phone_number address varchar(100);

select sum(loan_amount) as "total loan amount"
from loans
where int_rate  > 10;


select max(interest) as "maximum interest "
from loans;

select*from loans 
where customer_name like '%SHARMA';

select*from loans
 where interest is null; 
 
 SELECT customer_name, Loan_Amount, Int_Rate, Instalments, Interest
FROM loans
ORDER BY Interest;

select customer_name,loan_amount,int_rate,instalments,interest
from loans
where instalments <=10
order by interest;

SELECT Interest, COUNT(*) AS loan_holder_count
FROM loans
WHERE Instalments > 5
GROUP BY Interest
ORDER BY Interest;












