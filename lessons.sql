create table if not exists lessons
(
	seq_number	int,
	subject	char(2) check (subject in ('QR', 'QM', 'IS')),
	topic	varchar(25),
	weeks	int,
	primary key (seq_number, subject)
);

load data infile '/var/log/mysql/lessons.txt' replace into table lessons (seq_number, subject, topic);
