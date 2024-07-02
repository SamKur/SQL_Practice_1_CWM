USE sql_store;
SELECT * FROM customers;


INSERT INTO customers -- means ALL
VALUES (DEFAULT, 'John', 'Smith', '1999-01-01', DEFAULT , 'address dummy 1', 'city dummy 1', 'CA', DEFAULT );
#1st default was AutoIncrement , 2nd was NULL, 3rd was '0'
#if 1st one is PK, but not AutoIncrement then value will not be inserted

