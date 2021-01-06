drop table customers;
Create Table customers (
	customer_id int auto_increment,
    first_name varchar(255),
    last_name  varchar(255),
    email_address varchar(255),
    number_of_complaints int,
Primary Key (customer_id)
    );
-- add default to existing table    
alter table customers
change column number_of_complaints number_of_complaints int default 0;
-- add enum with default value
alter table customers
add column gender enum('M','F') not null;

insert into customers 
(first_name, last_name, gender)
values ("sam" , "spade" , 'm');
select * from customers;