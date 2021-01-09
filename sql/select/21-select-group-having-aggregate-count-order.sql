--- select group having aggregate count order 
/*
select col, count(col) as num
from table
group by col
having count(col) > 100
order by col
;
*/

use employees;

-- Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.
select emp_no -- , from_date -- 
-- . count(emp_no) as emp_count
from dept_emp
where from_date > '2000-01-01'
group by emp_no
having count(emp_no)>1
order by emp_no
;

select emp_no -- . count(emp_no) as emp_count
from dept_emp
where from_date > '2000-01-01' 
order by emp_no
;

