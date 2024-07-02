#subqry in from clause 

SELECT * FROM
(	SELECT client_id, name,
	(SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id) AS total,  #only cid present above calculate sum for each
	(SELECT AVG(invoice_total) FROM invoices) AS avgg,  #(152.38)
	(SELECT total - avgg) AS diff
	FROM clients c
	) AS sales_summary
WHERE total IS NOT NULL ;

# now will store it as view
