#join paytments with client table and payment table 
#paytment with name of the client and payment method
USE sql_invoicing;
SELECT * FROM payments;
SELECT * FROM payment_methods;
SELECT * FROM clients;

#doing multiple inner join
SELECT c.name AS name, p.date AS Payment_Date, pm.name AS Mode_Of_Payment
FROM payments AS p
INNER JOIN payment_methods AS pm
ON p.payment_method = pm.payment_method_id
INNER JOIN clients AS c
ON p.client_id = c.client_id