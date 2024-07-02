USE sql_invoicing;

SELECT * FROM invoices;

SELECT AVG(invoice_total) AS inv_avg FROM invoices;  -- > average, 1row result

SELECT invoice_total , AVG(invoice_total) FROM invoices; -- > this now gives error

SELECT invoice_total , ( 	select AVG(invoice_total) FROM invoices	), 15 AS KuchBhii
FROM invoices;


SELECT invoice_total , ( 	select AVG(invoice_total) FROM invoices	) AS inv_avg,
invoice_total - (select inv_avg) AS diff -- > error as , cant call alias directly
FROM invoices;

