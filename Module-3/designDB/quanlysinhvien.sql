create database quanlysinhvien;
use quanlysinhvien;

create table class(
class_id int not null auto_increment primary key,
classname varchar(60) not null ,
startdate datetime not null,
status bit
);

create table student(
student_id int not null auto_increment primary key,
studentname varchar(60) not null,
address varchar(50),
phone varchar(20),
status bit,
classid int not null
);

create table subject(
subid int not null auto_increment primary key,
subname varchar(30) not null,
credit tinyint not null default(1) check (credit >=1),
status bit
);

create table mark(
markid int not null auto_increment primary key,
subid int not null unique key,
studentid int not null unique key,
mark float default(0) check (mark between 0 and 100),
examtimes tinyint default(1)
);