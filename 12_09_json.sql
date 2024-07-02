USE sql_inventory;
SELECT * FROM products ;
ALTER TABLE products DROP COLUMN properties; #removing pre-existing

#creating new JSON datatype
ALTER TABLE products
ADD properties JSON;

#creating JSON via String Literal
UPDATE products
SET properties = 
'{
  "dimensions": [1, 2, 3],
  "weight": 10,
  "manufacturer": {"name": "sony"}
}'
WHERE product_id = 2;

