-- client-id (1,2,..5), name, total_sales, avg, diff

SELECT * FROM clients;
SELECT * FROM invoices;

SELECT client_id, SUM(invoice_total) AS total, AVG (invoice_total) AS avgg FROM invoices
GROUP BY client_id  ;			

SELECT c.client_id, name, SUM(invoice_total) AS total, AVG (invoice_total) AS avgg FROM invoices i
INNER JOIN clients c ON  c.client_id = i.client_id
GROUP BY client_id  ;		#for name colm ,fine till now


SELECT c.client_id, name, SUM(invoice_total) AS total, AVG (invoice_total) AS avgg, (SUM(invoice_total)-AVG(invoice_total)) AS diff 
FROM invoices i  #total-avgg not valid as (select .. as total),(select .. as avgg), (select total-avg as diff)
INNER JOIN clients c ON  c.client_id = i.client_id		
GROUP BY client_id 
ORDER BY client_id ASC  ; #cid = 4 not available


## alt method by select subqry

SELECT client_id, name,
(SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id) AS total,  #only cid present above calculate sum for each
(SELECT AVG(invoice_total) FROM invoices) AS avgg,  #(152.38)
(SELECT total - avgg) AS diff
FROM clients c;

