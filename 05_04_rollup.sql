SELECT state, city,
SUM(invoice_total) AS total_sales
FROM invoices
JOIN clients USING (client_id)
group by state, city WITH ROLLUP  #use all in select
#which agrregates values
#rollup uses aggregate funct for each groups