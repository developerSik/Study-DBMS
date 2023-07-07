use star;


create table tbl_report(
	report_id int unsigned auto_increment primary key,
	report_title varchar(500) not null,
	user_number int unsigned not null,
	report_content varchar(1000) not null,
	foreign key(user_number) references tbl_user (user_number),
	use_number int unsigned not null,
	foreign key(use_number) references tbl_use (use_number)
);

alter table tbl_report auto_increment = 1;
select * from tbl_report;



DELETE FROM star.tbl_report
WHERE report_id=2;


INSERT INTO tbl_report
(report_title, user_number, report_content, use_number)
VALUES('신고제목1', 1, '신고내용1', 1);

