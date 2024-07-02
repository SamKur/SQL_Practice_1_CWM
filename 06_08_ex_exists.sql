-- find the products that never have been ordered

USE sql_store;

SELECT * FROM products;

SELECT * FROM order_items;


SELECT * FROM products p
WHERE NOT EXISTS  	#or, where product_id not in
( SELECT DISTINCT product_id FROM order_items WHERE product_id=p.product_id );