#SELECT * FROM invoices;

SELECT 
'First half of 2019' AS date_range,
SUM(invoice_total) AS total_sales,
SUM(payment_total) AS total_payments,
(SUM(invoice_total)-SUM(payment_total)) AS what_we_expect
FROM invoices
WHERE invoice_date>='2019-01-01' AND invoice_date<'2019-07-01'

UNION 

SELECT 
'Second half of 2019' AS date_range,
SUM(invoice_total) AS total_sales,
SUM(payment_total) AS total_payments,
(SUM(invoice_total)-SUM(payment_total)) AS what_we_expect
FROM invoices
WHERE invoice_date<'2020-01-01' AND invoice_date>='2019-07-01'

UNION

SELECT 
'Total' AS date_range,
SUM(invoice_total) AS total_sales,
SUM(payment_total) AS total_payments,
(SUM(invoice_total)-SUM(payment_total)) AS what_we_expect
FROM invoices
WHERE invoice_date<'2020-01-01' AND invoice_date>='2019-01-01';