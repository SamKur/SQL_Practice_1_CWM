SELECT * FROM customers;

SELECT first_name , last_name , address FROM customers
#WHERE address LIKE '%TRAIL%' OR '%AVENUE%' ;  -- wrong, throws warning	
#WHERE address LIKE ('%TRAIL%' OR '%avenue%'); -- wrong, same thing
WHERE address LIKE '%TRAIL%' OR address LIKE '%AVENUE%';


SELECT first_name , last_name , phone FROM customers
WHERE phone NOT LIKE '%9';