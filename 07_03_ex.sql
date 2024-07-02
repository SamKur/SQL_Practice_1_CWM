#03_exercise

SELECT * FROM orders
WHERE YEAR(order_date) >= '2019';

SELECT * FROM orders
WHERE YEAR(order_date) = YEAR( NOW() );