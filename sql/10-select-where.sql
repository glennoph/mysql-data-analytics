
use employees;
-- select dept_no from departments
select dept_no from departments;
-- select all employeses with first name is Elvis
select * from employees
	where first_name = 'Elvis';
-- get all female employees whose first name is Kellie
select * from employees
	where gender = 'F' and first_name = 'Kellie';
    