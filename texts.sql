create table if not exists texts
(
	id	int not null auto_increment primary key,
	subject char(2) check (subject in ('QR', 'QM', 'IS')),
	name	varchar(50),
	author	varchar(50),
	cost	float,
	approved char(5) check (approved in ('true', 'false'))
);

load data infile '/var/log/mysql/texts.txt' into table texts (subject, name, author, cost, approved);
