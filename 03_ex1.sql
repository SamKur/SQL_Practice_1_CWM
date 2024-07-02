USE sql_store;

SELECT * FROM order_items;

SELECT * FROM products;

#using alias. if alias is declared, u must use alias always 
SELECT * FROM order_items o  #or, as o
INNER JOIN products p
on o.product_id = p.product_id;


#below same
SELECT * FROM order_items o
INNER JOIN products p
WHERE p.product_id =  o.product_id ;


# this one creates products table as left & order_items as right
SELECT * FROM products p
INNER JOIN order_items o
WHERE o.product_id = p.product_id