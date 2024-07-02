SELECT * FROM order_items;
SELECT * FROM products;

#productid, name (all present), quantity
select * FROM products
LEFT JOIN order_items
ON products.product_id = order_items.product_id;

#see 7 product id is never ordered but its still present 