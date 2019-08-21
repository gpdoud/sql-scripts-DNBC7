select name as 'Customer', CONCAT(city, ', ', state) as 'City/State', 
	orders.id as 'Order Id', Format(date, 'MMM dd, yyyy') as 'Order Date'
	from orders
	join customers
		on orders.CustomerId = Customers.Id
	where orders.id >= 2020 and orders.id <= 2040
	order by orders.Id