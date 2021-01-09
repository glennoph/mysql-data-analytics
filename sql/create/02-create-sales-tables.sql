use sales;
create table sales (
	purchase_number int not null primary key auto_increment,
    date_of_purchase date not null,
    customer_id int,
    item_code varchar(10) not null
    );
    
create table customers (
	customer_id int not null primary key auto_increment,
    first_name varchar(255) not null,
    last_name  varchar(255) not null,
    email_address varchar(255),
    number_of_complaints int not null
    );
    
select * from sales;

select * from sales.sales;

drop table sales; -- drop sales table

create table sales (
	purchase_number int not null auto_increment,
    date_of_purchase date not null,
    customer_id int,
    item_code varchar(10) not null,
primary key (purchase_number)
);

drop table customers;
create table customers (
	customer_id int,
    first_name varchar(255),
    last_name  varchar(255),
    email_address varchar(255),
    number_of_complaints int,
    Primary Key (customer_id)
    );