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
SELECT TENDT
 FROM DETAI DT
 WHERE DT.MADT NOT IN (SELECT DT.MADT
      FROM GIAOVIEN GV,THAMGIADT TG
      WHERE GV.HOTEN = 'Nguyễn Hoài An'AND GV.MAGV = TG.MAGV
      );
      
select tendt from detai dt 
where dt.MADT not in (select dt1.MADT 
	from giaovien gv, thamgiadt tg, detai dt1
    where hoten = 'Nguyễn Hoài An' and tg.MAGV = gv.MAGV);
    
-- q43
