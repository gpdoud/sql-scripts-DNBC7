-- get all rows and columns from customers table
Select * From Customers;

-- get city, state, id, and name from customers table
Select City, State, Id, Name From Customers;

-- get all columns from customers in ohio or kentucky
select * from customers 
	where (state = 'OH') OR (state = 'KY')
	order by state desc, city

-- get the customer from jersey city
select * from customers where city = 'jersey city';