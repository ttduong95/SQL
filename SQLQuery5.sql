select*from DONGXE;
select DongXe, SoChoNgoi from DONGXE where SoChoNgoi >5;
--bt 4
select*from NHACUNGCAP;
select*from DANGKYCUNGCAP; 
declare @tgMaNhaCC varchar=(select MaNhaCC from DANGKYCUNGCAP where DongXe like'Vios');
select*from NHACUNGCAP where MaNhaCC in (select MaNhaCC from DANGKYCUNGCAP where DongXe like'Vios');
declare @maMaNhaCC varchar=(select MaNhaCC from DANGKYCUNGCAP where DongXe like'Escape');
select*from NHACUNGCAP where MaNhaCC in (select MaNhaCC from DANGKYCUNGCAP where DongXe like'Escape');

-- bt 5
select*from NHACUNGCAP; 
select*from NHACUNGCAP  order by TenNhaCC asc;
select*from NHACUNGCAP  order by MaSoThue desc;
--bt 6
select*from DANGKYCUNGCAP;
select MaNhaCC, count(MaNhaCC) as soluong from DANGKYCUNGCAP group by MaNhaCC;

--bt 7

select*from DONGXE;
select HangXe from DONGXE where ;

--bt 9
select*from NHACUNGCAP;
select*from DANGKYCUNGCAP; 
declare @tgnMaNhaCC varchar=(select MaNhaCC from DANGKYCUNGCAP where DongXe like'Hiace');
select*from NHACUNGCAP where MaNhaCC in (select MaNhaCC from DANGKYCUNGCAP where DongXe like'Hiace');

-- bt 10

