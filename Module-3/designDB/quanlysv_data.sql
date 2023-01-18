use quanlysinhvien;
insert into class
values(1, 'A1', '2022-12-20',1);
insert into class
values(2, 'A2', '2022-12-22',1);
insert into class
values(3, 'B3', current_date(),0);
use quanlysinhvien;
insert into student
values(1,"Hung", 'HN', '098756987',1,1);
insert into student
values(2,"Hoa", 'HN', '098756987',1,1);
insert into student
values(3,"Manh", 'HN', '098756987',0,2);

insert into subject
values (1, 'CF',5,1);
insert into subject
values (2, 'C',6,1);
insert into subject
values (3, 'HDJ',5,1);
insert into subject
values (4, 'RDBMS',10,1);

insert into mark (subid, studentid, mark, examtimes)
values (1,1,8,1),
	   (1,2,10,2),
	   (2,1,12,1);

