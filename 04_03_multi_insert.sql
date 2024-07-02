USE sql_store;

SELECT * FROM shippers ; 

insert into shippers (name) #as shipper id is AI
values ('Shipper1'), ('Shipper2') , ('Shipper3');

select * from products;

INSERT into products (product_id, name, quantity_in_stock, unit_price)
values
(DEFAULT, "Toothpase", 36, 1),
(DEFAULT, 'Broom - Max cleaner', 12, .5),
(DEFAULT, 'Dumex Gel', 69, 3.01);  #if `` used, throws error -> unknown colm in 'field list)
