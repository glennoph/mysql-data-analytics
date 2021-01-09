-- function-min-max 
use employees;

-- What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?

select * from salaries 
where from_date > '1997-01-01';

-- Which is the lowest employee number in the database?
select min(emp_no) from salaries; 

-- Which is the highest employee number in the database?
select max(emp_no) from salaries; 