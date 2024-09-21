create database STUDENT_MANAGEMENT_SYSTEM;
use STUDENT_MANAGEMENT_SYSTEM;
create table Student(
student_id int primary key auto_increment,
student_name varchar(10) not null,
DOB date not null,
email varchar(100) unique not null
);

create table Course(
course_id int primary key auto_increment,
course_name varchar(100) not null,
credits int not null
);

create table Enrollments(
enrollment_id int primary key auto_increment,
student_id int not null,
foreign key(student_id)references Student(student_id),
course_id int not null,
foreign key(course_id) references Course(course_id),
enrollment_date date not null
);
show tables;
describe course;
describe enrollments;
describe student;
