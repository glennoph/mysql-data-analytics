-- aggregate functions, count
use employees;

-- How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table

select count(salary) 
from salaries
where salary >= 100000;

-- How many managers do we have in the “employees” database?
select count(*) from employees;