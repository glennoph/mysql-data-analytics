-- delete 

use employees;

insert employees values ('999903', '1988-01-01', 'john', 'craft', 'm', '1997-01-01');
insert titles values('999903' , 'senion whatever', '1997-01-01' , null) ;

select * from titles where emp_no = '999903' ;
select * from employees where emp_no = '999903' ;

-- delete record from titles and employees
SET autocommit=0; -- NB not working!!
delete from employees where emp_no = '999903' ;

-- rollback to restore records
rollback;