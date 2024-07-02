use sql_store;

SELECT * FROM customers
WHERE birth_date >='1990-01-01' AND birth_date <='2000-01-01';

# or

SELECT * FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

# below is not same 

SELECT * FROM customers
WHERE birth_date BETWEEN '2000-01-01' AND '1990-01-01';

