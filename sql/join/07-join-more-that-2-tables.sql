-- join more than 2 tables
use employees;

-- Select all managers’ first and last name, hire date, job title, start date, and department name.

select * from dept_manager;
select * from employees;
select * from departments;
select * from titles;

select dm.emp_no, e.first_name, e.last_name, e.hire_date, t.title, dm.from_date, d.dept_name
from dept_manager dm
join employees e on dm.emp_no = e.emp_no
join departments d on dm.dept_no = d.dept_no
join titles t on dm.emp_no = t.emp_no
;