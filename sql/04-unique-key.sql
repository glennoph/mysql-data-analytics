drop table customers;
Create Table customers (
	customer_id int auto_increment,
    first_name varchar(255),
    last_name  varchar(255),
    email_address varchar(255),
    number_of_complaints int,
Primary Key (customer_id)
    );
-- add unique key to existing table    
alter table customers
add unique key (email_address);