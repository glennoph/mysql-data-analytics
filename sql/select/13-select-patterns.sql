-- patterns

use employees;

-- get employees whose  first name starts with “Mark”
select * from employees
where first_name like ('Mark%');

-- employees who have been hired in the year 2000.

select * from employees
where hire_date like ('2000-%');

-- get employees whose employee number is written with 5 characters, and starts with “1000”.

select * from employees
where emp_no like ('1000_');