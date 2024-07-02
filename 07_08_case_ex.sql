USE sql_store;
-- Case operator
SELECT
		order_id,
		order_date,
		CASE
			WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
			WHEN YEAR(order_date) = YEAR(NOW())-3 THEN 'Last Year'
			WHEN YEAR(order_date) < YEAR(NOW())-4 THEN 'Archived'
			ELSE 'Future'
		END 	AS category
FROM orders;

#ex
#cust fullname, points, catgory (>3k gold, 2k~3k silver, <2k bronze)
-- SELECT * FROM customers;

SELECT
		CONCAT(first_name,' ',last_name)
		points,
		CASE
			WHEN points > 3000 THEN 'Gold'
			WHEN (points <=3000 AND points>=2000) THEN 'Silver'  #<=3000 doesnt actually needed
			ELSE 'Bronze'
		END 	AS category
FROM customers;

