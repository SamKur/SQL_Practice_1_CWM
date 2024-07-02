#if funct

USE sql_store;
SELECT * FROM orders;

#if order in 2019 -> active, else archived
-- if(exp, true_val, false_val) #value -> string, null, date anything
-- if .. then .. end if;
SELECT
		order_id,
		order_date,
		if( YEAR(order_date) = '2019', "active", 'inactive' ) AS category
FROM orders;

#ex
# product_id (grp,asc), prod name, orders(num), freq(acc to num)

SELECT * FROM products; #prd_id, nme
SELECT * FROM order_items; #prd_id, count of order_id


SELECT oi.product_id, COUNT(oi.order_id) AS orders_counter,
if (COUNT(oi.order_id)=1, 'Once', 'Many Times') AS freq
FROM order_items oi
GROUP BY product_id;
#was good till now.  Have to add product name colm


SELECT oi.product_id, p.name, COUNT(oi.order_id) AS orders_counter, COUNT(*) AS orders_counter_alt,
if (	COUNT(oi.order_id)=1, 'Once', 'Many Times'	) AS freq
FROM order_items oi
INNER JOIN products p
USING (product_id)  #instead id ON/WHERE
GROUP BY product_id; #groupby @ last position, 

	#if we use agg func grpby to be used with all other colms in select
	
#alt



SELECT * FROM products; #prd_id, nme
SELECT * FROM order_items; #prd_id, count of order_id

SELECT * FROM products p #error as no agg func is used
INNER JOIN order_items oi
GROUP BY p.product_id;

#retry
SELECT p.product_id, COUNT(*), p.name FROM products p #error as no agg func is used
INNER JOIN order_items oi
GROUP BY p.product_id, p.name;