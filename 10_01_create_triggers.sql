SELECT * FROM sql_invoicing.invoices;
SELECT * FROM sql_invoicing.payments;
DROP TRIGGER IF EXISTS payments_after_insert;

DELIMITER $$
CREATE TRIGGER payments_after_insert AFTER INSERT ON payments
FOR EACH ROW
BEGIN
UPDATE invoices 
SET payment_total = payment_total + NEW.amount
WHERE invoice_id = NEW.invoice_id;
END $$

INSERT INTO payments VALUES (DEFAULT,2,3,'2019-01-01', 10.1,2); #this is one insertion

SELECT * FROM sql_invoicing.invoices; -- checking new table, if it updated

SHOW TRIGGERS;