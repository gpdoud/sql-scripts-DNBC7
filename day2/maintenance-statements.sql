-- delete by primary key
delete from orders
	where id = 27

/*
-- Update the order we just added
Update Orders Set
	Description = 'My first updated order for Kroger',
	CustomerId = (select id from customers where name = 'Kroger')
	where id = 27;

select * 
	from orders o 
	join customers c 
		on c.id = o.CustomerId 
	where o.id = 27;

-- Insert into orders
select * 
	from orders o
	join customers c
		on c.Id = o.CustomerId
	where o.id = (select max(id) from orders)


Insert into Orders (CustomerId, Date, Description)
			values (
				(select id from customers where name = 'Verizon'), 
				'2019-08-21', 
				'My first manual insert into orders'
				);


-- Insert a new customer
Insert into Customers (Name, City, State, Sales, Active)
			values ('MAX Technical Training', 'Mason', 'OH', 75000, 1);

select * from customers where name = 'MAX Technical Training';
*/