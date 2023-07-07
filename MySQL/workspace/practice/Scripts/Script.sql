CREATE database practice;
use practice;

create table tbl_member (
	member_id int unsigned auto_increment primary key,
	member_name varchar(500),
	member_age tinyint unsigned
);

select * from tbl_member;

DELETE FROM tbl_member;
