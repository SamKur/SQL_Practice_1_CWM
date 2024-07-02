USE sql_store;

#1way to copy a table
CREATE TABLE orders_archived AS 
SELECT  * FROM orders;

SELECT * FROM `orders_archived` ; 
-- its no longer AI or pk


#2nd way to copy a table
INSERT INTO orders_archived
SELECT * FROM orders	
-- this is subquery of insert statement
WHERE order_date < '2019-01-01';

