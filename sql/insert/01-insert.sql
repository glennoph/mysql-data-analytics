-- insert

use employees;

-- Select ten records from the “titles” table
select * from titles
limit 10;

-- insert into employee
INSERT INTO employees
VALUES
(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);


-- insert employee number 999903. State that he/she is a “Senior Engineer”, 
-- who has started working in this position on October 1st, 1997

insert into titles (
emp_no, title, from_date )
values (
999903, 'Senior Engineer', '1997-10-01' )
;

-- sort by emp_no 
select * from titles
order by emp_no desc
limit 10;

-- insert 2
-- Insert information about the individual with employee number 999903 into the “dept_emp” table. 
-- He/She is working for department number 5, and has started work on  October 1st, 1997; 
-- her/his contract is for an indefinite period of time.

/*
select * from dept_emp
order by emp_no desc
limit 10;

insert into dept_emp 
values (
999903, '5', '1997-10-01', '9999-01-01');
/**/
