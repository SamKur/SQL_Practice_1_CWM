#join orders table with shipper's table

SELECT * FROM orders;
SELECT * FROM shippers;
SELECT * FROM customers;

SELECT * FROM orders AS o
LEFT OUTER JOIN shippers AS s
ON s.shipper_id = o.shipper_id ;

SELECT o.order_id, c.first_name AS Name, o.shipped_date, s.name AS `Shipper Name`	
FROM orders AS o
LEFT OUTER JOIN shippers AS s
ON s.shipper_id = o.shipper_id 
LEFT OUTER JOIN customers AS c
ON c.customer_id = o.customer_id
ORDER BY o.shipped_date desc ;