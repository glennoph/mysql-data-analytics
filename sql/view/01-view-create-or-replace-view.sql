-- view-create-or-replace-view
use employees;

-- Create a view that will extract the average salary of all managers registered in the database. 
-- Round this value to the nearest cent.

create or replace view v_dept_manager_avg_salary as
select round(avg(salary),2)
from salaries s 
join dept_manager dm on s.emp_no = dm.emp_no;

select * from v_dept_manager_avg_salary;