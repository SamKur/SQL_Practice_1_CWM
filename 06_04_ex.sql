#ex-06-04 -> join &/ subqry
-- find cust ordered lettuce (id=3)
-- select customer_id, first_name, last_name

USE sql_store;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM order_items;

#by JOIN
SELECT o.customer_id, c.first_name, c.last_name
FROM customers c
INNER JOIN  orders o using (customer_id)
INNER JOIN order_items oi using (order_id)
WHERE oi.product_id = 3;

#by SUBQRY
#use notebook for easy understand

SELECT order_id FROM order_items WHERE product_id = 3 ; #1stJob, subqry

SELECT customer_id FROM orders WHERE order_id IN 		 #2ndJob
		(SELECT order_id FROM order_items WHERE product_id = 3); 
		
SELECT customer_id, first_name, last_name FROM customers WHERE  customer_id IN (
		SELECT customer_id FROM orders WHERE order_id IN 
		(SELECT order_id FROM order_items WHERE product_id = 3)
		);