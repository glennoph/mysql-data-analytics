-- storedprocedure-with-output
use employees;

select * from employees;
select emp_no 
from employees
where first_name = 'Mary' 
and last_name = 'Sluis';


-- Create a procedure called ‘emp_info’ 
-- that uses as parameters the first and the last name of an individual, and 
-- returns their employee number.

drop procedure if exists emp_info;
delimiter $$
create procedure emp_info(in p_first_name varchar(20), in p_last_name varchar(20), 
	out p_emp_no int)
begin
	select emp_no into p_emp_no
from employees
where first_name = p_first_name 
and last_name = p_last_name;
    
end$$
delimiter ;

-- variable @p_emp_no
set @p_emp_no = 0;
call emp_info('Mary', 'Sluis', @p_emp_no) ;
select @p_emp_no;

set @p_emp_no = 0;
call emp_info('Aruna', 'Journel', @p_emp_no) ;
select @p_emp_no;
