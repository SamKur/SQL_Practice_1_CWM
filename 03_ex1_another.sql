#join sql_inventory.products with sql_store.order_items

USE sql_inventory ;

SELECT * FROM sql_store.order_items AS soi
INNER JOIN products AS p
ON p.product_id = soi.product_id;	