-- average sat score
SELECT avg(sat) from Student;
/*
-- display students where GPA >= 3.00
declare @targetgpa decimal(4,2);
set @targetgpa = 2.70;

select * from student
	where gpa >= @targetgpa


-- display students where 1000 < sat > 1400
DECLARE @LOWSAT int;
DECLARE @HIGHSAT int;

SET @LOWSAT = 900;
SET @HIGHSAT = 1500;

select * 
	from student
	where sat < @LOWSAT or sat > @HIGHSAT


-- display students where 1000 <= sat <= 1300
select * 
	from student
	where sat >= 1000 and sat <= 1300
*/