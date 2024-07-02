SHOW VARIABLES; -- session variables
SHOW EVENTS;

SHOW VARIABLES LIKE 'EVENT%';  

SET GLOBAL event_scheduler = ON ; -- turn this to ON

DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
-- AT '2023-05-01'  #hardcoding the date
EVERY 1 YEAR -- STARTS '2019-01-01' ENDS '2029-01-01' #these are optional
DO
BEGIN
	DELETE FROM payments_audit
	WHERE action_date < NOW() - INTERVAL 1 YEAR ;
END $$

DELIMITER ;