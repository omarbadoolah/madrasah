create table if not exists students 
(
   id		int not null auto_increment primary key,
   first	char(25),
   last		char(25),
   dob		date,
   street	varchar(25),
   city		char(25),
   state	char(2),
   zip		varchar(5),
   email	varchar(100),
   mother	char(50),
   father	char(50),
   home_phone   varchar(15),
   cell_phone   varchar(15),
   other_phone  varchar(15),
   emergency	char(50),
   emergency_phone	varchar(15),
   registration_date	date,
   start_date		date,
   end_date		date,
   class_recitation	varchar(2) check (class_recitation in ('K', '1B', '1G', '2B', '2G', '3B', '3G', '4B', '4G', '5B', '5G')),
   class_memorization	varchar(2) check (class_memorization in ('K', '1B', '1G', '2B', '2G', '3B', '3G', '4B', '4G', '5B', '5G')),
   class_islamic	varchar(2) check (class_islamic in ('K', '1B', '1G', '2B', '2G', '3B', '3G', '4B', '4G', '5B', '5G'))
);

load data infile '/var/log/mysql/students.txt' replace into table students (first, last, mother, father, home_phone, cell_phone, email, class_recitation, class_memorization, class_islamic) set registration_date = 2013-08-24, start_date = 2013-08-24;
