#  $$ or // to enable the entire definition to be passed to the server as a single statement

delimiter $$  # now delimiter is $$
CREATE PROCEDURE get_clients()  #define func , input fields
BEGIN	
		SELECT * FROM clients;
END $$  #

delimiter ; #set back delimiter to ; again


CALL get_clients();  #calling func



#dropping/deleting 

-- DROP PROCEDURE get_clients;

DROP PROCEDURE if exists get_clients; 

#MySQL, PostgreSQL, and SQLite support both IF NOT EXISTS and IF EXISTS for both tables and procedures. SQL Server supports IF EXISTS for tables and procedures, but not IF NOT EXISTS. Oracle does not support either IF NOT EXISTS or IF EXISTS for tables or procedures..