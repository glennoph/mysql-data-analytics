-- update where

use employees;

select * from departments;

-- Create a new department called “Data Analysis”. Register it under number ‘d010’.

update departments 
set dept_name = 'Data Analysis'
where dept_no = 'd010';

commit;