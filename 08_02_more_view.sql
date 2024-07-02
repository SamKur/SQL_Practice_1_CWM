#alter or drop
#create view view_name
DROP VIEW clients_balance;


-- update view

-- if not present ->
-- DISTINCT
-- AggFunct (min,sum..)
-- GrpBy
-- union

CREATE OR REPLACE VIEW invoices_with_balance AS 
SELECT invoice_id, NUMBER, client_id, invoice_total, payment_total, invoice_date, due_date, payment_date, invoice_total-payment_total as balance 
 FROM invoices
 WHERE (invoice_total - payment_total) > 0;

#so, this is an updateable view,
# we can use it to modify our data

SELECT * FROM invoices_with_balance;

DELETE FROM invoices_with_balance
WHERE invoice_id = 1 ;

UPDATE invoices_with_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)  # adds date, NEW
WHERE invoice_id = 2;



#with the option check

CREATE OR REPLACE VIEW invoices_with_balance AS 
SELECT invoice_id, NUMBER, client_id, invoice_total, payment_total, invoice_date, due_date, payment_date, invoice_total-payment_total as balance 
 FROM invoices
 WHERE (invoice_total - payment_total) > 0
 WITH CHECK OPTION; #   update not allowed
 
 SELECT * FROM invoices_with_balance;


UPDATE invoices_with_balance 
SET payment_total = invoice_total
WHERE invoice_id = 3; #chcek option failed