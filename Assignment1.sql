create database library;

-- use  library;

create table book_dtl(
book_id int primary key,
book_name varchar(20),
author_name varchar(30),
num_pages int,
price float);

select * from book_dtl;



