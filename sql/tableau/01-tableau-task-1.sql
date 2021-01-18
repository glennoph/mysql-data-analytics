-- tableau-task-1
use employees_mod;

-- Create a visualization that provides a breakdown between the male and female employees working in the company each year, starting from 1990. 

select e.gender, d.from_date, e.hire_date
from t_employees e
join t_dept_emp d on e.emp_no = d.emp_no
-- where e.hire_date >= 1990
;

select e.gender, year(d.from_date) as yearx
from t_employees e
join t_dept_emp d on e.emp_no = d.emp_no 
where d.from_date >= 1990
;

# count employees per year
select year(d.from_date) as yearx,
	e.gender, 
	count(e.emp_no) as num_employees
from t_employees e
join t_dept_emp d on e.emp_no = d.emp_no 
group by yearx, e.gender
having yearx >= 1990
order by yearx
;


# solution
SELECT 
    YEAR(d.from_date) AS calendar_year,
    e.gender,    
    COUNT(e.emp_no) AS num_of_employees
FROM     
     t_employees e         
          JOIN    
     t_dept_emp d ON d.emp_no = e.emp_no
GROUP BY calendar_year , e.gender 
HAVING calendar_year >= 1990
ORDER BY calendar_year , e.gender
;