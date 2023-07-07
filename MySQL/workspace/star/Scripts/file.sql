use star;

create table tbl_file(
	file_number int unsigned auto_increment primary key,
	file_origin_name varchar(1000) not null,
	file_size int not null,
	file_image varchar(1000) not null,
	file_type varchar(100) not null,
	user_number int unsigned not null,
	foreign key(user_number) references tbl_user (user_number)
);
