USE sql_store;

SELECT * FROM orders;

#replace NULL with 'Not Assigned'

SELECT order_id, shipper_id FROM orders;

SELECT order_id, 
		 IFNULL(shipper_id , 'Not Assigned') AS shipper 
FROM orders;

#lets take value of comments when shipper_id is null,
#if cmnt is also null, then return 'Not Assigned'

SELECT order_id, #like chain result
		 COALESCE(shipper_id, comments, 'Not Assigned') AS shipper 
FROM orders;