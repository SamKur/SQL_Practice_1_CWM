SELECT first_name, phone , city, 13 AS dummy_colm FROM customers
ORDER BY 1,3 ;   #1st and 3rd colm of select


# exercise soln

-- SELECT * FROM sql_store.order_items;


SELECT *,  unit_price*quantity as total_price FROM sql_store.order_items
WHERE order_id = 2
ORDER BY total_price DESC ;