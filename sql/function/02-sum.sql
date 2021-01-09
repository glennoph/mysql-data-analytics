-- function-sum 
use employees;

-- What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?

select * from salaries 
where from_date > '1997-01-01';

select sum(salary) from salaries 
where from_date > '1997-01-01';