create table if not exists attendance
(
	student_id	int not null,
	week	date,
	status	char(1) check (status in ('P', 'A', 'T')),
);

load data infile '/var/log/mysql/attendance.txt' into table attendance (student_id, week, status);