use sql_store;

SELECT * FROM sql_store.orders;

SELECT * FROM sql_store.customers;

# join -> inner join (by default)

SELECT * FROM  sql_store.orders
INNER JOIN customers  #or JOIN
ON orders.customer_id = customers.customer_id;

