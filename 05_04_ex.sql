SELECT * from payments;
SELECT * FROM payment_methods;

SELECT pm.name AS nn, SUM(amount)
FROM payments p
JOIN payment_methods pm ON (p.payment_method = pm.payment_method_id) #cant use USING
GROUP BY pm.name WITH ROLLUP ;

 #cant use groupby `alias name'