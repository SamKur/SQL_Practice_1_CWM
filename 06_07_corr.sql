-- for each employee calculate the avg salary for employee.office (for each office)
-- return the employee if salary > avg 

USE sql_hr;
SELECT AVG(salary) FROM employees; #inner qry


SELECT * FROM employees AS e
WHERE salary > (SELECT AVG(salary) FROM employees WHERE office_id = e.office_id);
#this is corelated subqry , as inner qry is realted to outer
#nd subqry is executed everytime 


#or I can use GroupBy


#Alt
SELECT office_id, AVG(salary) as AvgSly FROM employees GROUP BY office_id;

SELECT e.office_id, employee_id, salary FROM employees e
INNER JOIN (SELECT  office_id,AVG(salary) as AvgSly FROM employees GROUP BY office_id ) ee #how table alias set?
WHERE e.office_id = ee.office_id AND salary>AvgSly;
#GROUP BY e.office_id;

