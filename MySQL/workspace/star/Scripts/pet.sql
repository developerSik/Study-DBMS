use star;

create table tbl_pet(
	pet_number int unsigned auto_increment primary key,
	pet_name varchar(100) not null,
	pet_type varchar(100) not null,
	pet_species varchar(100) not null,
	pet_age int not null,
	user_number int unsigned not null,
	foreign key(user_number) references tbl_user (user_number)
);

select * from tbl_pet;
