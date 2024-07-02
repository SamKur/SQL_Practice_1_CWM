-- select clients that have an invoice

SELECT * FROM clients;
SELECT * FROM invoices;

SELECT * FROM clients
WHERE client_id IN ( SELECT DISTINCT client_id FROM invoices );
		#i.e      IN (1,2,3,5)  as LIST
SELECT * FROM clients
WHERE EXISTS  ( SELECT client_id FROM invoices );  #wrong, will execute for all client

SELECT * FROM clients c
WHERE EXISTS  	-- > True/False returns
( SELECT client_id FROM invoices WHERE client_id = c.client_id);