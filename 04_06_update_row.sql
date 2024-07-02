USE sql_invoicing;
SELECT * FROM invoices;

-- update 1 or 1+
UPDATE invoices
SET 
payment_total = 10, payment_date = '2019-03-01' 
WHERE invoice_id = 1;

UPDATE invoices
SET 
payment_total = invoice_total/2, payment_date = DEFAULT 
WHERE invoice_id = 3;  #<=3 etc for multi
