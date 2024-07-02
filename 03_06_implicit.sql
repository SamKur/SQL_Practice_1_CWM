USE sql_store;
SELECT * FROM orders
INNER JOIN customers
WHERE orders.customer_id = customers.customer_id

#alt method by implicit join

SELECT * FROM orders, customers  -- why not working? 
WHERE orders.customer_id = customers.customer_id
 -- where clause is imp or it will be cross-joined

