USE sql_store;
SELECT * FROM order_items;  -- order_id and product_id both are pk
SELECT * FROM order_item_notes;  -- note_id is pk


#compound join condition  (using ON+AND)
SELECT * FROM order_items AS oi
INNER JOIN order_item_notes AS oin
ON oi.order_id=oin.order_Id AND oi.product_id =  oin.product_id  ;