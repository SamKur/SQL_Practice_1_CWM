USE sql_store; 
SELECT * FROM orders;
          
SELECT shipped_date AS `DATE`, 'Archived' AS `STATUS`
FROM orders
WHERE shipped_date < '2018-01-01'
UNION   #union of two (row wise)
SELECT shipped_date AS `DATE`, 'Done' AS `STATUS`
FROM orders
WHERE shipped_date >= '2018-01-01'