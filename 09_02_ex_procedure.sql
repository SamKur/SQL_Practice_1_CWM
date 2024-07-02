# Create procedure called get_invoice_with_balance
# to return all the invoices with a balance > 0

SELECT * FROM invoices;

SELECT * , invoice_total - payment_total AS balance
FROM invoices;

delimiter $$
CREATE PROCEDURE get_invoice_with_balance() 
BEGIN   #or use select * from invoices_with_balance; (view created earlier)
		SELECT * , (invoice_total - payment_total) AS balance
		FROM invoices
		WHERE (invoice_total - payment_total)>0 ;
END

$$ delimiter;

#calling it

CALL get_invoice_with_balance();


#dropping/deleting 

DROP PROCEDURE if exists get_invoice_with_balance; 