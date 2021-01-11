-- cross-join-1
use employees;

-- Use a CROSS JOIN to return a list with all possible combinations 
-- between managers from the dept_manager table and department number 9.

select * 
from 
departments d
cross join
dept_manager dm
where dm.dept_no = 'd009'
;

-- Return a list with the first 10 employees with all the departments they can be assigned to.

select * 
from employees e
cross join departments d
where e.emp_no < 10011
;