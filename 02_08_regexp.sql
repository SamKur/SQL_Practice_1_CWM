#
SELECT * FROM sql_store.customers
WHERE last_name 
-- LIKE '%field%'    #or -> regular expression
REGEXP 'field$';	-- ends with 'field'

-- ^ to indicate begining of a string
-- $ to indicate end of a string
-- | is or

SELECT * FROM sql_store.customers
WHERE last_name
REGEXP '^field';  -- STARTS w/ 'field'

SELECT * FROM sql_store.customers
WHERE last_name
REGEXP '^field|mac|rose';  -- field or mac 


SELECT * FROM sql_store.customers
WHERE last_name
REGEXP '[gim]e';  -- like ge , ie, me 


SELECT * FROM sql_store.customers
WHERE last_name
REGEXP '[a-z]e';  -- like ae , be, ce, ...., ye, ze

