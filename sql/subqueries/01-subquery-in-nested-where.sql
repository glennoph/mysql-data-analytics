-- subquery-in-nested-where
use employees;

-- Extract the information about all department managers 
-- who were hired between the 1st of January 1990 and the 1st of January 1995.

select e.*
from employees e 
where e.emp_no in (
	select dm.emp_no
    from dept_manager dm
    where e.hire_date between '1990-01-01' and '1995-01-01'
    )
;