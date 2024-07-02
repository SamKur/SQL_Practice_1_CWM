USE sql_invoicing;
SELECT * FROM invoices;
SELECT CLIENT_id, SUM(payment_total), COUNT(*) FROM invoices GROUP BY client_id; #or
SELECT CLIENT_id, SUM(payment_total), COUNT(1) FROM invoices GROUP BY 1;

SELECT
client_id,
SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id #right after from
ORDER BY total_sales DESC ;

SELECT
state, city,
SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients USING (client_id )
GROUP BY state, city;

#ex. date,payment_method total_payments?

