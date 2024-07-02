-- Get invoices that are larger than the client's avg invoice amount
#so, for each client we need the invoice amount's avg
USE sql_invoicing;

SELECT * FROM invoices;


SELECT AVG(invoice_total) FROM invoices;  -- avg 

SELECT * FROM invoices i
WHERE invoice_total > (SELECT AVG(invoice_total) FROM invoices WHERE client_id = i.client_id);  -- this is for all avg

-- for each client's avg

