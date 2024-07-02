#agrregate function 
#MAX MIN AVG SUM COUNT()
SELECT invoice_total FROM invoices;



SELECT 
		MAX(invoice_total) AS Heighest,
		MIN(invoice_total) AS Lowest,
		AVG(invoice_total) AS Average,
		SUM(invoice_total) AS Total,
		COUNT(invoice_total) AS `No Of Invoices`, #count of Non NULL only
		COUNT(*) AS 'Total Records', #all count
		COUNT(distinct client_id) AS 'Total Clients' #all count
FROM invoices
WHERE invoice_date > '2019-07-01';