#ex_06_03
#find clients without invoices

USE sql_invoicing;
SELECT * FROM clients;
SELECT * FROM invoices;  -- here is all clientid with invoices

SELECT DISTINCT CLIENT_id FROM invoices;  -- this is subqry 

SELECT *
FROM clients
WHERE client_id
NOT IN
(SELECT CLIENT_id FROM invoices);

#alt using outer JOIN

SELECT * 
FROM clients
LEFT JOIN 
invoices using  (client_id)
WHERE invoice_id IS NULL;
 