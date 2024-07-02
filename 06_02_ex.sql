#ex_06_02
#in sqlhr -> employee earn more than avg
USE sql_hr;
SELECT * FROM employees;

SELECT AVG(salary) FROM employees;  #this is going to be subquery

SELECT FIRST_name , last_name, salary  
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees );


#taking one step further -> by how much more??
#thats quest for later -> use delimiter @var etc