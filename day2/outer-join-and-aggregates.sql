-- display count of students
SELECT count(*), count(MajorId), max(sat), min(sat),avg(gpa)
	from Student;

/*
-- display student name and major
SELECT s.Firstname, s.Lastname, s.GPA, s.SAT, isnull(m.Description, 'Undeclared') as 'Major'
	from Student s
	left join Major m
		on s.MajorId = m.Id
*/
