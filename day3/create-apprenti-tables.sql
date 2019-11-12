/*
-- create the database
CREATE DATABASE Apprenti;


CREATE TABLE TechTrac (
	Id nchar(4) not null primary key,
	Description nvarchar(30) not null,
	NbrOfWeeks int not null,
	Available bit not null
);

CREATE TABLE Developers (
	Id int not null primary key, -- identity(x,y)
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	PrimaryEmail nvarchar(100) not null,
	SecondaryEmail nvarchar(100),
	City nvarchar(40) not null default 'Cincinnati',
	State nchar(2) not null default 'OH',
	Active bit not null default 1,
	Phone nvarchar(20) not null,
	TechTracId nchar(4) not null foreign key references TechTrac(Id)
);

CREATE TABLE TechTopix (
	Id int not null primary key identity(1,1),
	Description nvarchar(80) not null
);

CREATE TABLE TechTracTopix (
	Id int not null primary key identity(1,1),
	TechTracId nchar(4) not null foreign key references TechTrac(Id),
	TechTopixId int not null foreign key references TechTopix(Id) 
);
*/