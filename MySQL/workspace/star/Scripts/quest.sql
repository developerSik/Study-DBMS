use star;


create table tbl_quest(
	quest_id int unsigned auto_increment primary key,
	quest_category varchar(1000) not null,
	quest_content varchar(2000),
	user_number int unsigned not null,
	foreign key(user_number) references tbl_user (user_number),
	use_number int unsigned not null,
	foreign key(use_number) references tbl_use (use_number)
);
