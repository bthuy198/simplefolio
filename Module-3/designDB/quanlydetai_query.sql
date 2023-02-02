use quanlydetai;

-- q1
select hoten, luong from giaovien where phai = 'Nữ';
-- q2
select hoten, luong + (luong * 0.1) as luong from giaovien;
-- q3
select magv from giaovien 
where (giaovien.HOTEN like "Nguyễn%" and giaovien.luong >= 2000) or magv in (select magv from giaovien 
inner join bomon on giaovien.magv = bomon.truongbm 
where  year(bomon.NGAYNHANCHUC) >= 1995);

-- q4
select magv, hoten from giaovien 
inner join bomon on giaovien.MABM = bomon.MABM 
inner join khoa on bomon.MAKHOA = khoa.MAKHOA 
where khoa.tenkhoa = 'Công nghệ thông tin';
-- q5
select * from bomon inner join giaovien on bomon.TRUONGBM = giaovien.MAGV;
-- q6
select HOTEN, tenbm, phong, dienthoai, truongbm, makhoa, ngaynhanchuc from bomon join giaovien on bomon.mabm = giaovien.mabm;
-- q7
select tendt, magv, hoten from giaovien inner join detai on giaovien.MAGV = detai.GVCNDT;
-- q8
select tenkhoa, magv, hoten, phai, ngaynhanchuc from khoa inner join giaovien on giaovien.MAGV = khoa.TRUONGKHOA;
-- q9
select distinct giaovien.MAGV, hoten from giaovien inner join thamgiadt on giaovien.magv = thamgiadt.MAGV where thamgiadt.MADT = 006 and giaovien.MABM = 'VS';
-- q10
select madt, tendt, tencd, hoten, ngsinh, diachi from detai 
inner join chude on detai.MACD = chude.MACD 
inner join giaovien on detai.GVCNDT = giaovien.MAGV 
where detai.CAPQL = 'ĐHQG';

-- câu 11, chưa xong
select giaovien.HOTEN , (select hoten from giaovien where GVQLCM = MAGV) 
from giaovien where gvqlcm in (select magv, giaovien.HOTEN as hotengvqlcm from giaovien); 

-- q12
select * from giaovien where gvqlcm in (select magv from giaovien where hoten = 'Nguyễn Hoài An');

-- q13
select hoten from giaovien inner join khoa on giaovien.MAGV = khoa.TRUONGKHOA where khoa.MAKHOA = 'CNTT';

-- câu 14
select distinct magv, hoten from giaovien 
join detai on giaovien.MAGV = detai.GVCNDT 
where MACD in (select macd from chude where TENCD = 'Quản lý giáo dục');

-- q15
select detai.madt, tencv from detai 
inner join congviec on detai.MADT = congviec.MADT 
where TENDT = 'HTTT quản lý các trường ĐH' and ( month(congviec.ngaybd) >= 3 and year(congviec.ngaybd) >= 2008);

-- q16

-- q17
select * from congviec where ngaybd between '2007-01-01 00:00:00' and '2007-08-01 23:59:59';

-- q18
select magv, hoten from giaovien where mabm in (select mabm from giaovien where hoten = 'Trần Trà Hương');

-- q19
select distinct magv, hoten from giaovien 
join bomon on bomon.TRUONGBM = giaovien.MAGV
join detai on GVCNDT = giaovien.MAGV;

-- q20
select distinct magv, hoten from giaovien
join khoa on khoa.TRUONGKHOA = giaovien.MAGV
join bomon on bomon.TRUONGBM = giaovien.MAGV;

-- q23
select distinct giaovien.magv, hoten from giaovien 
join bomon on bomon.MABM = giaovien.MABM
join thamgiadt on thamgiadt.magv = giaovien.MAGV
where bomon.mabm = 'HTTT' or thamgiadt.MADT = 001;

-- q24
select magv, hoten from giaovien
join bomon on bomon.MABM = giaovien.MABM
where bomon.TRUONGBM = 002 and magv != 002;

-- q25
select magv, hoten from giaovien
join bomon on bomon.TRUONGBM = giaovien.MAGV;

-- q26
select magv, hoten, luong from giaovien;

-- q27
select count(magv) as soluonggv, sum(luong) as tongluong from giaovien ;

-- q28
select bomon.mabm, tenbm, count(giaovien.mabm) as slgv, avg(luong) as luongtb from bomon
join giaovien on giaovien.MABM = bomon.MABM
group by giaovien.MABM;

-- q29
select chude.tencd as tenchude, count(detai.macd) as soluongdetai from detai
join chude on chude.MACD = detai.MACD
group by detai.MACD;

-- q30, chưa xong
select giaovien.magv, hoten, count(thamgiadt.magv) from giaovien 
join thamgiadt on thamgiadt.magv = giaovien.magv
group by thamgiadt.magv;

-- q31
select hoten, count(detai.GVCNDT) as sldtcn from giaovien
join detai on detai.GVCNDT = giaovien.MAGV
group by giaovien.magv;

-- q32
select hoten, count(nguoithan.MAGV) as slnguoithan from giaovien
join nguoithan on nguoithan.MAGV = giaovien.MAGV
group by giaovien.MAGV;

-- q33 chưa
select hoten from giaovien 
join thamgiadt on thamgiadt.MAGV = giaovien.magv
where count(thamgiadt.MAGV) >= 3
group by thamgiadt.magv;

-- q34
select count(distinct thamgiadt.MAGV) as slgv from detai 
join thamgiadt on thamgiadt.madt = detai.madt
where detai.TENDT = 'Nghiên cứu tế bào gốc'
group by detai.madt;

-- q36
select hoten from giaovien where luong in (select max(luong) from giaovien);

-- q37, chưa
-- select hoten from giaovien where luong = max();
-- select hoten from giaovien where luong = (select max(select luong from giaovien where mabm = 'HTTT') from giaovien where mabm = 'HTTT');

-- q38
select magv, hoten from giaovien
join bomon on bomon.MABM = giaovien.MABM
where bomon.TENBM = 'Hệ thống thông tin'
	and year(ngsinh) = (select min(year(gv.ngsinh)) from giaovien gv, bomon bm
    where bm.TENBM = 'Hệ thống thông tin' and gv.MABM = bm.MABM);
    
-- q39
select magv, hoten from giaovien gv, khoa k, bomon bm
where gv.MABM = bm.mabm and bm.MAKHOA = k.MAKHOA AND k.TENKHOA = 'Công nghệ thông tin'
	and year(ngsinh) = (select max(year(gv1.ngsinh)) from giaovien gv1, khoa k1, bomon bm1
    where k1.TENKHOA = 'Công nghệ thông tin' and gv1.MABM = bm1.mabm and bm1.MAKHOA = k1.MAKHOA);
    
-- q40
select magv, hoten, k.tenkhoa from giaovien gv, khoa k, bomon bm 
where gv.MABM = bm.mabm and bm.MAKHOA = k.MAKHOA and gv.luong = (select max(luong) from giaovien);

-- q41
select  magv, hoten, gv.luong, gv.mabm from giaovien gv
join (select max(luong) as luong, mabm from giaovien group by mabm) as maxluong
on maxluong.mabm = gv.mabm and maxluong.luong = gv.luong;

-- q42
select madt, tendt from detai dt 
where dt.MADT not in (select distinct dt1.MADT 
	from giaovien gv, thamgiadt tg, detai dt1
    where hoten = 'Nguyễn Hoài An' and tg.MAGV = gv.MAGV and tg.madt = dt1.madt);
;
-- q43
select madt, tendt, hoten as hotengvcndt from detai dt
join giaovien gv on gv.magv = dt.gvcndt
where dt.MADT not in (select distinct dt1.MADT 
	from giaovien gv, thamgiadt tg, detai dt1
    where hoten = 'Nguyễn Hoài An' and tg.MAGV = gv.MAGV and tg.madt = dt1.madt);
;
use quanlydetai;
-- q44: Cho biết tên những giáo viên khoa Công nghệ thông tin mà chưa tham gia đề tài nào.
select gv.magv from giaovien gv, bomon bm, khoa k, thamgiadt dt
where gv.mabm = bm.mabm and k.makhoa = bm.makhoa and dt.magv = gv.magv and k.tenkhoa = 'Công nghệ thông tin' 
	and gv.magv not in(select magv from thamgiadt);

-- q45 Tìm những giáo viên không tham gia bất kỳ đề tài nào
select magv, hoten from giaovien gv
where magv not in (select distinct magv from thamgiadt);

-- q46 Cho biết giáo viên có lương lớn hơn lương của giáo viên “Nguyễn Hoài An”
select magv, hoten, luong from giaovien where luong > (select luong from giaovien where hoten = 'Nguyễn Hoài An');

-- q47 Tìm những trưởng bộ môn tham gia tối thiểu 1 đề tài
select distinct gv.magv, gv.hoten from giaovien gv, thamgiadt 
where gv.magv = thamgiadt.magv and thamgiadt.magv in (select truongbm from bomon);

-- q48 Tìm giáo viên trùng tên và cùng giới tính với giáo viên khác trong cùng bộ môn
select * from giaovien gv1, giaovien gv2
where gv1.hoten != gv2.hoten and gv1.phai = gv2.phai and gv1.magv != gv2.magv and gv1.mabm = gv2.mabm;

-- Q49. Tìm những giáo viên có lương lớn hơn lương của ít nhất một giáo viên bộ môn “Hệ thống thông tin”
select magv, hoten, luong from giaovien, bomon
where giaovien.mabm = bomon.mabm and bomon.tenbm != 'Hệ thống thông tin' 
	and luong > any (select luong from giaovien gv, bomon bm where gv.mabm = bm.mabm and bm.tenbm = 'Hệ thống thông tin');
    
-- Q50. Tìm những giáo viên có lương lớn hơn lương của tất cả giáo viên thuộc bộ môn “Hệ thống thông tin”
select magv, hoten, luong from giaovien, bomon
where giaovien.mabm = bomon.mabm and bomon.tenbm != 'Hệ thống thông tin' 
	and luong > all (select luong from giaovien gv, bomon bm where gv.mabm = bm.mabm and bm.tenbm = 'Hệ thống thông tin');
    
-- Q51. Cho biết tên khoa có đông giáo viên nhất
select tenkhoa, sum(slgv)
from khoa k, (SELECT bomon.mabm, tenbm, makhoa, COUNT(gv.magv) AS slgv
FROM bomon, giaovien gv
WHERE bomon.mabm = gv.mabm
GROUP BY gv.mabm) as countgv where countgv.makhoa = k.makhoa group by tenkhoa;
-- Q52. Cho biết họ tên giáo viên chủ nhiệm nhiều đề tài nhất
SELECT dt.GVCNDT, gv.HOTEN
FROM quanlydetai.detai dt join giaovien gv on dt.MADT = gv.MAGV
group by dt.GVCNDT
having count(dt.MADT) >= all (select count(dt1.MADT) from detai dt1 group by dt1.GVCNDT );
-- Q53. Cho biết mã bộ môn có nhiều giáo viên nhất
SELECT bomon.mabm, tenbm, COUNT(gv.magv) AS slgv
FROM bomon, giaovien gv
WHERE bomon.mabm = gv.mabm
GROUP BY gv.mabm;
select *
from (SELECT gv.MABM, count(gv.MABM) as max_bm
	FROM quanlydetai.giaovien gv
	group by gv.MABM) as temp
where temp.max_bm >= all (SELECT count(gv.MABM) as max_bm
	FROM quanlydetai.giaovien gv
	group by gv.MABM);
    
-- Q54. Cho biết tên giáo viên và tên bộ môn của giáo viên tham gia nhiều đề tài nhất.
select thamgiadt.magv, gv.hoten, bomon.TENBM
from giaovien gv 
join thamgiadt on gv.magv = thamgiadt.MAGV
join bomon on bomon.MABM = gv.MABM
group by thamgiadt.magv having count(distinct madt) >= all (select count(distinct madt) as sldt from thamgiadt tg group by tg.magv);

-- Q55. Cho biết tên giáo viên tham gia nhiều đề tài nhất của bộ môn HTTT.
select thamgiadt.magv, gv.hoten, bomon.TENBM
from giaovien gv 
join thamgiadt on gv.magv = thamgiadt.MAGV
join bomon on bomon.MABM = gv.MABM
where bomon.mabm = 'HTTT'
group by thamgiadt.magv having count(distinct madt) >= 
all (select count(distinct madt) as sldt 
		from giaovien gv
		join thamgiadt tgdt on tgdt.magv = gv.magv
		join bomon bm on bm.MABM = gv.mabm
		where bm.mabm = 'HTTT'
		group by tgdt.magv);

-- Q56. Cho biết tên giáo viên và tên bộ môn của giáo viên có nhiều người thân nhất.
select gv.magv as 'mã giáo viên',gv.hoten as 'tên giáo viên', bm.tenbm as 'tên bộ môn'
from giaovien gv
join bomon bm on gv.mabm = bm.mabm
join nguoithan nt on nt.magv = gv.magv
group by nt.magv having count(ten) >= all(select count(ten) as slnt from nguoithan group by magv);

-- Q57. Cho biết tên trưởng bộ môn mà chủ nhiệm nhiều đề tài nhất.
select giaovien.magv, giaovien.hoten
from giaovien, detai
where giaovien.magv = detai.gvcndt 
group by detai.gvcndt having count(madt) >= all(select count(madt)
from giaovien gv
join detai dt on gv.MAGV = dt.GVCNDT
group by dt.GVCNDT);

-- Q58. Cho biết tên giáo viên nào mà tham gia đề tài đủ tất cả các chủ đề.
select gv.magv, gv.hoten
from giaovien gv
join thamgiadt tgdt on tgdt.magv = gv.magv
join detai dt on tgdt.madt = dt.madt
where ;

select distinct tg.magv
from thamgiadt tg 
where not exists (
(select madt from detai) 
not in (select madt from thamgiadt tg2 where tg2.magv = tg.magv));
-- Q59. Cho biết tên đề tài nào mà được tất cả các giáo viên của bộ môn HTTT tham gia.
use quanlydetai;
select tendt 
from detai dt
join thamgiadt tg on tg.madt = dt.madt
 group by madt;
select * from giaovien where giaovien.mabm = 'HTTT'; -- 002, 003

