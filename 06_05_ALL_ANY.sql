-- select invoices larger than all invoices of client 3
USE sql_invoicing;
SELECT * FROM invoices ;

SELECT DISTINCT * FROM invoices
WHERE invoice_total > ( SELECT MAX(invoice_total) FROM invoices WHERE client_id = 3)
ORDER BY client_id;

#or, by ALL kwd

SELECT DISTINCT * FROM invoices
WHERE invoice_total > ALL ( SELECT invoice_total FROM invoices WHERE client_id = 3)
ORDER BY client_id;

# ANY/SOME kwd
SELECT  * FROM invoices
WHERE invoice_total > ANY (SELECT invoice_total FROM invoices WHERE client_id = 3)
ORDER BY client_id;

-- select clients with atleast 2 invoices

#this is subqry
SELECT client_id -- COUNT(*) AS Total_Invoices -- > this is not needed
FROM invoices
group by CLIENT_id
HAVING COUNT(*) >= 2;

SELECT * FROM clients
WHERE client_id IN (  	#or, = ANY() -> equivalent
			SELECT client_id
			FROM invoices
			group by CLIENT_id
			HAVING COUNT(*) >= 2
);