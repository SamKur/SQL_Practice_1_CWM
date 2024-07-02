USE sql_invoicing;
SELECT * FROM clients;
SELECT * FROM invoices;

#bal for each client. cid,name, balance
#payment total - invoice total = balance
#CREATE VIEW clients_balance AS

SELECT c.client_id, c.NAME, SUM(invoice_total - payment_total) AS balance FROM clients c
INNER JOIN invoices i USING(client_id)
GROUP BY c.client_id, c.name;

CREATE VIEW clients_balance AS
				SELECT c.client_id, 
						 c.NAME, 
						 SUM(invoice_total - payment_total) AS balance 
				FROM clients c
				INNER JOIN invoices i USING(client_id)
GROUP BY c.client_id, c.name;


SELECT * FROM clients_balance; #print_view