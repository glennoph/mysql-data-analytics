-- left join 2
use employees;

-- Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees 
-- whose last name is Markovitch.  
-- See if the output contains a manager with that name.  

-- Hint: Create an output containing information corresponding to the following fields: ‘emp_no’, ‘first_name’, ‘last_name’, ‘dept_no’, ‘from_date’. Order by 'dept_no' descending, and then by 'emp_no'.

select * from employees; -- e
select * from dept_manager; -- dm

select e.first_name, e.last_name, 
	ifnull(dm.dept_no, 'not mgr') as dept_no,
    ifnull(from_date, '') as from_date
from employees e
left join
dept_manager dm on e.emp_no = dm.emp_no
where e.last_name = 'Markovitch'
order by e.last_name, e.first_name
;