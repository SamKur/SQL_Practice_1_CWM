#where client_id =/ IN (select id from...)
#or, where payment date = '2009-07-31' etc

USE sql_invoicing;
SELECT * FROM invoices;

#what if searchby name 
SELECT client_id FROM clients
WHERE NAME = 'Myworks';  -- we can use this as subquery in updt statement


UPDATE invoices
SET
	payment_total = invoice_total/2, 
	payment_date = due_date
#WHERE client_id=3 -- > previously done
WHERE client_id = 
				(SELECT client_id FROM clients
				WHERE NAME = 'Myworks')
				
	

#doing same for client.state = NY,CA

UPDATE invoices
SET
	payment_total = invoice_total/2, 
	payment_date = due_date
#WHERE client_id=3 -- > previously done
WHERE client_id IN  #(not =)
				(SELECT client_id FROM clients
				WHERE state IN ('ca', 'ny'))
				