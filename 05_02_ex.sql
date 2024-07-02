#
#DATE pmnth method   total paym
USE sql_invoicing;
SELECT * FROM invoices; 
SELECT * FROM payments;
SELECT * FROM payment_methods;


SELECT
payment_date AS DATE,
`name` AS payment_method,
SUM(payment_total) AS total_payments
FROM invoices i
JOIN payments p USING (invoice_id)
JOIN payment_methods pm WHERE p.payment_method = pm.payment_method_id #error

GROUP BY payment_date, NAME
ORDER BY DATE;


#alt

SELECT 
date,
pm.name AS payment_method,
SUM(amount) AS total_payments
FROM payments p
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
GROUP BY DATE, p.payment_method  #if only date -> will throw error
ORDER BY DATE;