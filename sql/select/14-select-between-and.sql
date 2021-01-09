-- between operator 

use employees;

--  information from the “salaries” table regarding contracts from 66,000 to 70,000 dollars
select * from salaries
where salary between 66000 and 70000;

-- get  individuals whose employee number is not between ‘10004’ and ‘10012’.
select * from employees
where emp_no not between 10004 and 10012;

-- get  names of all departments with numbers between ‘d003’ and ‘d006’.

select * from departments
where dept_no between 'd003' and 'd006';