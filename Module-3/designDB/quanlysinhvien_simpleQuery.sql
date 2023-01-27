use quanlysinhvien; 
select * from student;
select * from student where status = 1;
select * from subject where credit < 10;
select student_id, studentname, address, phone, classname from student s 
join class c on c.class_id = s.classid
where c.classname ='A1';
select student_id, studentname, mark from student s
join mark m on s.student_id = m.studentid
join sub on sub.subid = m.subid
where sub.subname = 'CF';