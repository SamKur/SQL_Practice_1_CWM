DROP PROCEDURE if EXISTS get_clients_by_state;


delimiter //
CREATE PROCEDURE get_clients_by_state ( state CHAR(2) )  #or, change in here for no need alias c
BEGIN
	SELECT * FROM clients c
	WHERE c.state = state;
END //

delimiter ;

CALL get_clients_by_state('NY') ; 