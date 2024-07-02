USE sql_store;

#explicit cross join
SELECT *
FROM shippers s
CROSS JOIN products p
ORDER BY s.shipper_id;


#implicit cross join
SELECT *
FROM shippers s , products p
ORDER BY s.shipper_id;