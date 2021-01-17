-- storedprocedure-exercise-1
use employees;

-- Create a procedure that will provide the average salary of all employees.
drop procedure if exists average_salary;
delimiter $$
create procedure average_salary()
begin
	select round(avg(salary),2)
    from salaries;
    
end$$
delimiter ;

call average_salary();