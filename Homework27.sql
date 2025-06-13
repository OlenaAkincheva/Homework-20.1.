create database Hillel;
use Hillel;
create table students (
id int auto_increment primary key,
FirstName varchar(100),
SecondName varchar (100)
); 
describe table students;
rename table students to Hillelstudents;
drop table Hillelstudents;
create table students (
id int auto_increment primary key,
FirstName varchar(100),
SecondName varchar (100)
); 
alter table students add column email varchar(100);
alter table students modify column email varchar(150);
alter table students rename column email to Coolemail;
alter table students drop column Coolemail;
create table StudentCurses (
id int auto_increment primary key,
NazvaCursa varchar(100) not null,
TipCursa varchar(100)default "online",
studentId int,
foreign key (studentId) references students(id)
);
insert into students (FirstName,SecondName)
values ("Olena","Akincheva"),
("Max","Zdorenko");
select * from students;
insert into StudentCurses (NazvaCursa,studentId)
values ("Manual QA",2);
select * from StudentCurses;
create database Homework27;
use Homework27;
create table car_brands (
id int auto_increment primary key,
title varchar(100) not null);
drop table if exists Hillel.car_brands;
use Homework27;
insert into car_brands (title)
values ("Audi"),("BMW");
select * from car_brands;
create table car_models (
id int auto_increment key,
carbrand int not null,
title varchar(100) not null,
foreign key (carBrand) references car_brands(id)
);
select * from car_models;
insert into car_models (carBrand, title)
values 
(1,"A4"),
(1,"Q5"),
(2,"X5"),
(2,"3 series");
create table users (
id int auto_increment primary key,
userId varchar(100) not null,
carBrandId int not null,
carModelId int not null,
mileage int not null,
initialMilleage int not null,
foreign key (carBrandId) references car_brands(id),
foreign key (carModelId) references car_models(id)
);
select * from users;
select * from car_models;
drop table if exists users;
create table users (
id int auto_increment primary key,
firstName varchar(100) not null,
lastName varchar(100) not null,
email varchar(100) not null,
password varchar(100) not null
);
insert into users (firstName, lastName, email, password)
values
("Alisa", "Akincheva", "alisa@example.com", "pasword123"),
("Ivan", "Zinchenko", "ivan@example.com", "pasword456");

create table cars (
id int auto_increment primary key,
userId int not null,
carBrandId int not null,
carModelId int not null,
mileage int not null,
initialMileage int not null,
foreign key (userId) references users(id),
foreign key (carBrandId) references car_brands(id),
foreign key (carModelId) references car_models(id)
);

select * from users;
select * from car_brands;
select * from car_models;
describe cars;

insert into cars (userId, carBrandId, carModelId, mileage, initialMileage)
values 
(1, 1, 1, 150000, 10000),
(2, 2, 3, 200000, 110000);
select * from cars;
