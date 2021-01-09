-- get all female employees whose first name is either Kellie or Aruna.

use employees;
-- and/or
select * from employees
where gender = 'f' and ( first_name = 'Kellie' or first_name = 'Aruna' ) ;
-- and/in
select * from employees
where gender = 'f' and  first_name in ( 'Kellie', 'Aruna' ) ;

-- in operator for 3 first names
select * from employees
where first_name in ( 'Cathie', 'Mark' , 'Nathan') ;

-- in 
select * from employees 
where first_name in ('Denis', 'Elvis');

-- not in
select * from employees
where first_name not in ('John', 'Mark', 'Jacob');