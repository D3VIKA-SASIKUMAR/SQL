create database library_system;
use library_system;
create table Authors(
author_id int auto_increment,
author_name varchar(50),
country varchar(20),
primary key (author_id)
);


create table Books(
book_id int auto_increment,
title varchar(20),
author_id int,
foreign key(author_id) references Authors(author_id ),
publication_year int ,
primary key(book_id)
);

create table Users(
user_id int auto_increment,
user_name varchar(10) NOT NULL,
email varchar(100) unique not null,
membership_date date not null,
primary key(user_id)
);

create table Loans(
loan_id int auto_increment,
primary key(loan_id),
book_id int,
user_id int ,
foreign key(book_id)references Books(book_id) ,
foreign key(user_id)references Users(user_id),
loan_date date not null,
return_date date null
);

show tables;
DESCRIBE authors;
DESCRIBE books;
DESCRIBE loans;
DESCRIBE users;


