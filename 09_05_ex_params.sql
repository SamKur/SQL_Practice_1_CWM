# write a stored procedure to return invoices for given client
DROP PROCEDURE IF EXISTS get_invoices_by_client;

SELECT * FROM clients;

-- i'm using little diff than previous

DELIMITER $$
CREATE PROCEDURE get_invoices_by_client ( param_client_id INT )
BEGIN
	SELECT * FROM clients
	WHERE client_id = param_client_id ;
END $$
DELIMITER ;

CALL get_invoices_by_client ( 5 );
