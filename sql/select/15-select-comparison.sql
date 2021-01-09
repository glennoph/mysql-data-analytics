-- comparison operators
use employees;

-- get data about all female employees who were hired in the year 2000 or after
select * from employees
where gender = 'f' and hire_date >= '2000-01-01';

--- get employees salaries higher than $150,000 per annum.
select * from  salaries
where salary > 150000;