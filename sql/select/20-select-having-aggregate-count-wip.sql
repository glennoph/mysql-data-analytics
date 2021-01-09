--- select having aggregate count 
/*
select col, count(col) as num
from table
group by col
having count(col) > 100
order by col
;
*/

use employees;

--  all employees whose average salary is higher than $120,000 per annum.
select * -- , avg(salary)
from salaries
where salary > 100000
-- group by emp_no
order by emp_no
;


--  all employees whose average salary is higher than $120,000 per annum.
-- NB this is not correct
select emp_no, count(*) -- , avg(salary)
from salaries
where salary > 100000
group by emp_no
order by emp_no
;


/*
--  all employees whose average salary is higher than $120,000 per annum.
select count(salary>120000) as num
from salaries
group by salary  > 120000
having salary > 120000
order by salary > 120000
;
/**/

select salary, avg(salary)
from salaries
group by salary
having avg(salary) > 120000
order by salary
;

/* expresiion #2 in select is not in group by 
select *, avg(salary)
from salaries
group by emp_no
having avg(salary) > 120000
;
/**/

-- solution

SELECT
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;