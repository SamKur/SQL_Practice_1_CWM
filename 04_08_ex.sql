USE sql_store;
SELECT * FROM orders;
SELECT * FROM customers;
SELECT * FROM order_statuses;
#Q. customers > 3000 pts (i.e Gold) -> if order placed -> orders.comment ~ 'Gold Customer'

SELECT * FROM customers  -- extract pts>3000
WHERE points>3000;


UPDATE orders
SET
comments = 'Gold Customer'
WHERE customer_id IN(
				SELECT customer_id FROM customers
				WHERE points>3000);
				
SELECT * FROM orders;