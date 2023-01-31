use quanlysinhvien;
select * from student where studentname like 'H%';
select * from class where month(startdate) = 12;
select * from sub where credit between 3 and 5;
update student set student_id = 2 where studentname = 'Hung'; -- kh thể thay đổi vì student_id là primary key
select studentname, subname, mark from student s
join mark m on m.studentid = s.student_id
join sub on sub.subid = m.subid
order by m.mark asc;