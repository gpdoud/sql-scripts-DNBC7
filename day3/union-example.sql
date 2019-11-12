select 'Green' as Color,* from student
	where gpa >= 3.0
union
select 'Blue' as Color,* from student
	where gpa >= 2.5 and gpa < 3.0
union
select 'Orange' as Color,* from student
	where gpa < 2.5
order by gpa