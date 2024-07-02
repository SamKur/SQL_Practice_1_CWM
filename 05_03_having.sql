USE sql_invoicing;
SELECT * FROM invoices;

SELECT 
client_id,
SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id;

#now filter on only total_sales > 500 

SELECT 
client_id,
SUM(invoice_total) AS total_sales
FROM invoices
WHERE SUM(invoice_total)  > 500 #error
#invalid use of grp by // unknow colm
#as it is not grouped till now
GROUP BY client_id;




SELECT 
client_id,
SUM(invoice_total) AS total_sales
FROM invoices

GROUP BY client_id
-- WHERE_sales  > 500 	#error, cant use here
HAVING total_sales  > 500;


#2 filters

SELECT 
client_id,
SUM(invoice_total) AS total_sales,
COUNT(*) AS no_of_invoices  #count(any_colm) will retun only non-nulls
FROM invoices
GROUP BY client_id
-- WHERE_sales  > 500 	#error, cant use here
HAVING total_sales  > 500 AND number_of_invoices > 5; # these must be part of select clause


