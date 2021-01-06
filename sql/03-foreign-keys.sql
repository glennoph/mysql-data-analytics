use sales;

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
-- add foreign key to existing table    
alter table sales
add foreign key (customer_id) references customers(customer_id) on delete cascade;