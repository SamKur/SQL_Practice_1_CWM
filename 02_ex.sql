#USE sql_inventory;

-- SELECT * FROM products;

SELECT `name`, unit_price, (unit_price*1.1) AS new_price  
				-- as name is a reserved keyword
FROM sql_inventory.products;