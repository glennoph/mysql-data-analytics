-- inner join 2
use employees;

-- Extract a list containing information 
-- about all managers’ employee number, first and last name, department number, and hire date. 

select * from dept_manager_dup;
select * from employees;

SELECT 
    m.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM
    dept_manager_dup m
        INNER JOIN
    employees e ON m.emp_no = e.emp_no
ORDER BY m.emp_no
;

-- NB join = inner join
SELECT 
    m.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM
    dept_manager_dup m
        JOIN
    employees e ON m.emp_no = e.emp_no
ORDER BY m.emp_no
;

-- NB left join 
SELECT 
    m.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM
    dept_manager_dup m
        LEFT JOIN
    employees e ON m.emp_no = e.emp_no
ORDER BY m.emp_no
;