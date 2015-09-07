create table if not exists teachers
(
	first	char(25),
	last	char(25),
	phone	varchar(12),
	email	varchar(50),
	QR	varchar(2) check (class_recitation in ('K', '1B', '1G', '2B', '2G', '3B', '3G', '4B', '4G', '5B', '5G')),
	QM	varchar(2) check (class_memorization in ('K', '1B', '1G', '2B', '2G', '3B', '3G', '4B', '4G', '5B', '5G')),
	ISt	varchar(2) check (class_islamic in ('K', '1B', '1G', '2B', '2G', '3B', '3G', '4B', '4G', '5B', '5G')),
	category	varchar(10) check (category in ('teacher', 'assistant', 'potential'))
);

load data infile '/var/log/mysql/teachers.txt' replace into table teachers (first, last, phone, email, QR, QM, ISt, category);
