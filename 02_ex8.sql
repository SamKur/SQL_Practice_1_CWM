#
USE sql_store;
#  SELECT * FROM customers;

SELECT * FROM customers
#WHERE first_name = 'ELKA' OR FIRST_name = 'amber'; #or->
WHERE first_name IN ('elka', 'amber');

SELECT * FROM customers
WHERE LAST_name REGEXP 'EY$|ON$';

SELECT * FROM customers
WHERE last_name REGEXP '^MY|%SE%';  #or, '^MY|SE'

SELECT * FROM customers
WHERE last_name REGEXP 'B[RU]';  #or, br|ru
