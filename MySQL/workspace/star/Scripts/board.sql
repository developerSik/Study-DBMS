use star;

create table tbl_board(
	board_number int unsigned auto_increment primary key,
	board_type varchar(1000) not null,
	board_title varchar(1000) not null,
	board_content varchar(1000),
	board_date datetime default current_timestamp,
	board_update datetime default current_timestamp
);
