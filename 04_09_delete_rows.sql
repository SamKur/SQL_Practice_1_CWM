USE sql_invoicing;
DELETE FROM invoices WHERE invoice_id<1;


SELECT * FROM clients 
WHERE NAME = 'Myworks'; #this need to be deleted



USE sql_invoicing;
DELETE FROM invoices
WHERE client_id IN ( 				#IN or = both are fine
			SELECT client_id from clients 
			WHERE `name` = 'Myworks' 
);
