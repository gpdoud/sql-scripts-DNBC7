Select Firstname, Lastname, t.Description as 'Program'
	from Developers d
	join TechTrac t
		on t.id = d.TechTracId

/*
Insert into TechTrac (Id, Description, NbrOfWeeks, Available)
			values ('DNET', 'Dot Net', 12, 1);

Insert into TechTrac (Id, Description, NbrOfWeeks, Available)
			values ('JAVA', 'Java', 12, 1);

Insert into TechTrac (Id, Description, NbrOfWeeks, Available)
			values ('NWSY', 'Network Security', 8, 1);


Insert into Developers 
	(Id, Firstname, Lastname, PrimaryEmail, SecondaryEmail, City, State, Phone, TechTracId)
values (8, 'Lidya', 'Tsegay', 'lidya@maxtrain.com', null, 'Cincinnati', 'OH', '513-555-2323', 'DNET');

Insert into Developers 
	(Id, Firstname, Lastname, PrimaryEmail, SecondaryEmail, City, State, Phone, TechTracId)
values (12, 'Justin', 'Dudley', 'justin@maxtrain.com', null, 'Cincinnati', 'OH', '513-555-2323', 'DNET');

Insert into Developers 
	(Id, Firstname, Lastname, PrimaryEmail, SecondaryEmail, City, State, Phone, TechTracId)
values (17, 'Tricia', 'Good', 'tricia@maxtrain.com', null, 'Cincinnati', 'OH', '513-555-2323', 'DNET');


Insert into TechTopix (Description) Values ('Git/Github');
Insert into TechTopix (Description) Values ('SQL Server');
Insert into TechTopix (Description) Values ('C#');
Insert into TechTopix (Description) Values ('EntityFramework');
Insert into TechTopix (Description) Values ('MVC');
Insert into TechTopix (Description) Values ('WebApi');
Insert into TechTopix (Description) Values ('HTML');
Insert into TechTopix (Description) Values ('CSS');
Insert into TechTopix (Description) Values ('JavaScript');
Insert into TechTopix (Description) Values ('Bootstrap');
Insert into TechTopix (Description) Values ('jQuery');
Insert into TechTopix (Description) Values ('Typescript');
Insert into TechTopix (Description) Values ('Angular');
-- Java
Insert into TechTopix (Description) Values ('MySql');
Insert into TechTopix (Description) Values ('Java');
Insert into TechTopix (Description) Values ('Hibernate');
Insert into TechTopix (Description) Values ('Spring');
Insert into TechTopix (Description) Values ('JPA');
*/
select tc.Description, tc.Id, tt.Description
	from techtopix tt
	join techtractopix ttt
		on tt.id = ttt.techtopixId
	join techtrac tc
		on tc.id = ttt.techtracid
	order by tc.Description

declare @GitGithubId int;
select @GitGithubId = id from TechTopix where Description = 'Git/Github';

Insert into TechTracTopix (TechTracId, TechTopixId) values ('DNET', @GitGithubId);
Insert into TechTracTopix (TechTracId, TechTopixId) values ('JAVA', @GitGithubId);

declare @sqlserverid int
select @sqlserverid = id from techtopix where description = 'SQL Server';

Insert into TechTracTopix (TechTracId, TechTopixId) values ('DNET', @sqlserverid);

	