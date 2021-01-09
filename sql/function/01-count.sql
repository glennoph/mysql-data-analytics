-- function-count 

use employees;

-- How many departments are there in the “employees” database
select * from dept_emp;
select count(*) from dept_emp;
select count(distinct dept_no) from dept_emp;