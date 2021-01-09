-- avg-round
use employees;

-- What is the average annual salary paid to employees who started after the 1st of January 1997?

select salary from salaries where from_date > '1997-01-01';

select avg(salary) from salaries where from_date > '1997-01-01';

-- Round the average amount of money spent on salaries for all contracts 
-- that started after the 1st of January 1997 to a precision of cents.

select round(avg(salary),2) from salaries where from_date > '1997-01-01';