-- join-where
use employees;

-- Select the first and last name, the hire date, and the job title 
-- of all employees whose first name is “Margareta” and  
-- have the last name “Markovitch”.

select e.emp_no, e.first_name, e.last_name, e.hire_date,
	t.title
from employees e
join titles t on e.emp_no = t.emp_no
where e.first_name = 'Margareta'
 and e.last_name = 'Markovitch'
order by e.emp_no
;