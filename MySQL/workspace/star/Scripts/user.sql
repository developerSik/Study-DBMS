create database star;
use star;

create table tbl_user(
	user_number int unsigned auto_increment primary key,
	user_id varchar(500) unique key not null,
	user_password varchar(100) not null,
	user_name varchar(100) not null,
	user_address varchar(500) not null,
	user_phonenumber varchar(100) not null,
	user_age int not null,
	user_gender varchar(100),
	user_status varchar(100) not null,
	user_title varchar(100),
	user_content varchar(500),
	user_star int
);
select * from tbl_user;
DELETE FROM star.tbl_user
WHERE user_number='3';


INSERT INTO star.tbl_user
(user_id, user_password, user_name, user_address, user_phonenumber, user_age, user_gender, user_status, user_title, user_content, user_star)
VALUES('example4@naver.com', '1111', '홍윤기', '동대문구', '01022222222', 24, '남', '0', '안녕하세요', '유기되는 애완동물이 줄었으면 좋겠습니다.', 5);

		select user_name, user_content
		from tbl_user
		where user_title is not null and user_content is not null and user_number = 1;
	
UPDATE tbl_user
SET user_content  = "동물을 너무 좋아하고 특히 강아지를 너무 좋아합니다, 맡겨주신다면 열심히 보살피겠습니다!" 
WHERE user_number ='1';

select user_name, user_star, user_age, user_gender, user_address
		from tbl_user
		where user_title is not null and user_content is not null and user_address like concat('%', '서초', '%');
