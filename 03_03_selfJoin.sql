USE sql_hr;
SELECT * FROM employees AS emp
INNER JOIN employees AS mngr
ON emp.reports_to = mngr.employee_id;

#

SELECT emp.employee_id AS ID, emp.first_name AS "Employee Name" , mngr.first_name AS `Manager's Name` #see i've used multiple ways to name a colm
FROM employees AS emp
INNER JOIN employees AS mngr
ON emp.reports_to = mngr.employee_id;