USE sql_invoicing;
#for every row deletion -> subtract on invoices.payments_total
SELECT * FROM payments;
SELECT * FROM invoices;
SELECT * FROM payments_audit;

DROP TRIGGER if EXISTS payments_after_delete;
DELIMITER $$
CREATE TRIGGER payments_after_delete AFTER DELETE ON payments
FOR EACH ROW
BEGIN
	UPDATE invoices
	SET payment_total = payment_total - OLD.amount
	WHERE invoice_id = OLD.invoice_id;
	
	INSERT INTO payments_audit
	VALUES (OLD.client_id, OLD.date, OLD.amount, 'delete', NOW());
END $$


-- now deleting one entry  -- cid2 iid3
DELETE FROM payments
WHERE payment_id = 1 -- OR, client_id = 1 AND invoice_id = 6;