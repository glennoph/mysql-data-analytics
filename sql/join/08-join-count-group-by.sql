-- join-count-group-by
use employees;

-- How many male and how many female managers do we have in the ‘employees’ database?

-- get male count
select count(e.gender) as 'count-male'
from employees e
join dept_manager dm on e.emp_no = dm.emp_no
where e.gender='M'
;
-- get female count
select count(e.gender) as 'count-female'
from employees e
join dept_manager dm on e.emp_no = dm.emp_no
where e.gender='F'
;

select * from dept_manager;

-- get gender count
select e.gender, count(*) as 'count-by-gender'
from employees e
join dept_manager dm on e.emp_no = dm.emp_no
group by e.gender
;
