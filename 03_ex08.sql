#order date, order id, first name, shipper (null present), status (all present)

-- customers.first_name
-- shippers.name

SELECT o.order_date, o.order_id, c.first_name AS `Customer Name`, s.name AS `Shipper's Name`, os.name AS Order_status
FROM orders o
Left OUTER JOIN customers c
ON o.customer_id = c.customer_id
Left OUTER JOIN shippers s
ON o.shipper_id = s.shipper_id
LEFT OUTER JOIN order_statuses os
ON o.`status` = os.order_status_id;