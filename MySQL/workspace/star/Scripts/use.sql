use star;

create table tbl_use(
	use_number int unsigned auto_increment primary key,
	use_useddate datetime default current_timestamp,
	target_number int not null,
	use_status varchar(100) not null,
	user_number int unsigned not null,
	foreign key(user_number) references tbl_user (user_number)
);

select * from tbl_use;

INSERT INTO star.tbl_use
(use_useddate, target_number, use_status, user_number)
VALUES(CURRENT_TIMESTAMP, 2, '이건뭐냐', 2);

