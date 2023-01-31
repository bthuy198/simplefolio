use quanlysinhvien;

select * from sub where credit in (select max(credit) from sub);

select * from sub 
join mark m on m.subid = sub.subid
where m.subid in (select subid from mark where mark = (select max(mark) from mark));

explain select s.student_id, s.studentname, avg(mark) from student s
left join mark m on m.studentid = s.student_id
group by s.student_id
order by avg(mark) desc;