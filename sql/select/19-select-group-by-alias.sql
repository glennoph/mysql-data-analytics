-- select group by, alias
/*
select col, count(col) as col_count
from table
where condition
group by col
order by col
;
*/
use employees;

/* 
The first column must contain annual salaries higher than 80,000 dollars. 
The second column, renamed to “emps_with_same_salary”, 
must show the number of employees contracted to that salary. 
Lastly, sort the output by the first column.
*/

select salary, count(salary) as emps_with_same_salary
from salaries
where salary > 80000
group by salary
order by salary
;