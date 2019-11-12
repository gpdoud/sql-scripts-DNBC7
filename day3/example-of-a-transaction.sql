begin transaction

insert into student (id, firstname, lastname, sat, gpa, majorid)
		values (999, 'Jane', 'Doe', 1200, 3.2, null);

if @@ROWCOUNT <> 1 
BEGIN
	rollback transaction
END

insert into student (id, firstname, lastname, sat, gpa, majorid)
		values (998, 'John', 'Smith', 1000, 2.7, 999);

if @@ROWCOUNT <> 1 
	rollback transaction
ELSE 
	commit transaction


/*
select * from student where id in (999, 998);

delete from student where id = 999;
*/