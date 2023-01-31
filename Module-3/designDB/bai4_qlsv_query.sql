use quanlysinhvien;

select address, count(student_id) as slsv from student group by address;

select s.student_id, s.studentname, avg(mark) as diemtb from student s
join mark m on m.studentid = s.student_id
group by student_id, studentname;

select s.student_id, s.studentname, avg(mark) as diemtb from student s
join mark m on m.studentid = s.student_id
group by student_id, studentname
having avg(mark) > 15;

select s.student_id, s.studentname, avg(mark) as diemtb 
from student s join mark m on m.studentid = s.student_id
group by student_id, studentname
having avg(mark) >= all (select avg(mark) from mark group by mark.studentid);