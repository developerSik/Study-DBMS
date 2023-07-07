use star;

create table tbl_review(
	review_number int unsigned auto_increment primary key,
	review_comment varchar(500) not null,
	review_date datetime default current_timestamp,
	review_updatedate datetime default current_timestamp,
	review_star int not null,
	use_number int unsigned not null,
	foreign key(use_number) references tbl_use (use_number)
);
