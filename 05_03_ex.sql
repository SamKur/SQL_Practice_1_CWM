USE sql_store;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM order_items;
#customer from VA ,spend>100

#i did below and having error
SELECT * FROM customers
#WHERE state = 'VA' #should be used after  
JOIN
orders USING  (customer_id) #not BY
JOIN 
order_items USING  (order_id)
WHERE state = 'VA' 
GROUP BY customer_id AND order_id
HAVING 
quantity*unit_price > 100;


#
SELECT customer_id, first_name, last_name,
		 SUM(quantity*unit_price) AS total_sales #c. oi. for all
FROM customers #as c etc for all
JOIN orders USING (customer_id) 
JOIN order_items USING  (order_id)
WHERE state = 'va'
#when aggreagte funct in select statement, use all other cols as grp by
GROUP BY 
		customer_id, first_name, last_name
HAVING total_sales >100 ;