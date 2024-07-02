use sql_store;

start transaction; #starting

insert into orders (customer_id, order_date, status)
values (1,'2019-01-01', 1);
SELECT last_insert_id() as IndexForNewEntry;
insert into order_items 
values (last_insert_id(),1,1,1);

commit;	#ending transaction with green signal

select * from orders ;
select * FROM order_items;