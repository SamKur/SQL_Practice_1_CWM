USE sql_store;

SELECT * FROM orders ; #custid 1,3,4 etc missing; 5,2 etc are twice
SELECT * FROM customers; #custid is 1-10 and unique


SELECT * FROM orders AS o #o is left, its kept full
LEFT OUTER JOIN customers AS c #then, this right is c
ON c.customer_id = o.customer_id;


#same -> outer kwd is optional
SELECT * FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id; #same rezult


#right join

SELECT * FROM orders o
RIGHT JOIN customers c
ON o.customer_id = c.customer_id