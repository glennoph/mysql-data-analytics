-- index-exercise2
use employees;

-- Select all records from the ‘salaries’ table of people whose salary is higher than $89,000 per annum.

select * from salaries
where salary > 89000; 
-- 0.0028 sec

-- create an index on the ‘salary’ column of that table, and 
-- check if it has sped up the search of the same SELECT statement.

create index isalary on salaries(salary);
select * from salaries
where salary > 89000; 
-- 0.0032 sec , hmm slower