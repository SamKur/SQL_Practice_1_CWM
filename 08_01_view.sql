USE sql_invoicing;

SELECT c.client_id, c.name, SUM(invoice_total)
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY c.client_id, c.name;

#list of top clients
#create view for multiple use in future
CREATE VIEW sales_by_client AS  #now sql statement
SELECT c.client_id, c.name, SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY c.client_id, c.name;

#viewing VIEW
SELECT * FROM sql_invoicing.sales_by_client;

#we can do all operations like table
SELECT * FROM sales_by_client 
WHERE total_sales>500
ORDER BY Total_Sales DESC;

#views dont store data, it only links to table
