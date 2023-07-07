use star;


create table tbl_answer(
	answer_number int unsigned auto_increment primary key,
	answer_content varchar(2000),
	user_number int unsigned not null,
	foreign key(user_number) references tbl_user (user_number),
	board_number int unsigned not null,
	foreign key(board_number) references tbl_board (board_number)
);
