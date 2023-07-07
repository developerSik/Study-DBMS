create database test;
use test;

create table tbl_guest(
   guest_id int unsigned auto_increment primary key,
   guest_email varchar(500) not null unique,
   guest_password varchar(500) not null,
   guest_age tinyint unsigned,
);

select * from tbl_guest;

alter table tbl_guest add column(birth date);

insert into tbl_guest(guest_email, guest_password, guest_age)
values('tedhan1204@gmail.com', '1234', 20);

/*연결*/
select concat(guest_age, '살') 나이 from tbl_guest;

/*현재 시간*/
select current_timestamp() from dual; 

/*형식 변경*/
select date_format(current_timestamp(), '%Y년 %m월 %d일 %H:%i:%s') from dual;

select guest_email, ifnull(birth, current_timestamp()) birth from tbl_guest;
