-- Contacts table
DROP TABLE if exists Contacts;
go
CREATE TABLE Contacts (
	Id int primary key identity(1,1),
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12),
	Email nvarchar(255),
	Relationship nvarchar(25),
	Address nvarchar(30),
	City nvarchar(20),
	State nchar(2),
	Birthday datetime,
	Favorite bit default 0,
	LastContact datetime
);
go
Insert into Contacts 
(Firstname, Lastname, Phone, Email, Relationship, Address, City, State, Birthday, Favorite, LastContact) VALUES
('Cindy', 'Doud', '513-555-1212', 'cindy@doud.me', 'spouse', '123 Any Street', 'Cincinnati', 'OH', '1990-01-01', 1, '2019-08-22');
Insert into Contacts 
(Firstname, Lastname, Phone, Email, Relationship, Address, City, State, Birthday, Favorite, LastContact) VALUES
('Rick', 'Doud', '513-555-1212', 'rick@doud.me', 'brother', '123 Any Street', 'Cincinnati', 'OH', '1990-01-01', 1, '2019-08-22');
Insert into Contacts 
(Firstname, Lastname, Phone, Email, Relationship, Address, City, State, Birthday, Favorite, LastContact) VALUES
('Sherry', 'Doud', '513-555-1212', 'sherry@doud.me', 'sister', '123 Any Street', 'Cincinnati', 'OH', '1990-01-01', 1, '2019-08-22');
go
SELECT * from Contacts;
go
Alter table Contacts
	add BFF bit default 0;
go
Alter table Contacts
	alter column Address nvarchar(50);
go
Alter table Contacts
	DROP CONSTRAINT [DF__Contacts__Favori__66603565]
go
Alter table Contacts
	drop column Favorite;
go
alter table contacts
	add testcol int