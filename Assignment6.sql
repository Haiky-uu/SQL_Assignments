create database school;

create table student
(roll_no int primary key ,
first_name varchar(20),
last_name varchar(20),
dob date
);

create table marks
(roll_no int ,
maths_marks float,
english_marks float,
science_marks float
);



