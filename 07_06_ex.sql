#cust full name, phn (ifnull -> 'Unknown')
USE sql_store;
SELECT * FROM customers;

SELECT CONCAT(first_name," ",last_name) AS Name, 
		 COALESCE(phone, 'Unknown') AS PhNo,  #or
		 IFNULL(phone, 'Unknown') AS PhnNum
FROM customers;