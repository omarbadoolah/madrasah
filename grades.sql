create table if not exists grades
(
	student_id	int	not null,
	assessment_date	date,
	subject	varchar(2) check (subject in ('QR', 'QM', 'IS')),
	topic	varchar(25),
	num	int,
	grade	varchar(25),
	foreign key(student_id) references students.id
);

load data infile '/var/log/mysql/grades.txt' into table grades (student_id, assessment_date, subject, topic, num, grade);