-- subquery-exists-where
use employees;

-- Select the entire information for all employees whose job title is “Assistant Engineer”. 

SELECT 
    e.*
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            titles t
        WHERE
			t.emp_no = e.emp_no and
            t.title = 'Assistant Engineer')
;

-- check the emp no of AE
SELECT 
    *
FROM
    titles t
WHERE
	t.title = 'Assistant Engineer';