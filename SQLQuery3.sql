-- truy van nang cao - SELECT
select ID, HinhAnh, Ten as TenTacGia, GioiThieu from TacGia; -- as đổi tên
-- filter data
select*from TacGia where ID <3 and Ten like 'Mai Huy Hoat';
select*from TacGia where ID <2 or Ten like 'Mai Huy Hoat';
select*from TacGia where ID in(1,2,3);
-- search
select*from TacGia where ID=2;
select*from TacGia where Ten like 'Mai Huy Hoat';
select*from TacGia where GioiThieu like 'Lop Truong';
select*from TacGia where GioiThieu like 'Lop Truong%';
select*from TacGia where Ten like '%fsdsfat';
select*from TacGia where GioiThieu like '% Truong%';

-- sort(
select*from TacGia order by Ten asc;
select*from TacGia order by Ten desc;
-- ASC-- nymber - low -> hight
		-- string -> alphabe
		-- date/datetime - old -> new
-- DESC <> ASC dao nguoc lai )

--limit
select top 1*from TacGia; -- lay 1 record dau tien
select top 1*from TacGia order by ID desc;
select top 50 percent*from TacGia; -- lay 50% -- 3 lay 2. 100 lay 50. 101 lay 51

-- thong ke
select count(ID) as solong from TinTuc;
select sum(TacGiaID) as total from TinTuc; -- tong tien cua so ID
select avg(TacGiaID) as tb from TinTuc; -- trung binh

-- group
select*from TinTuc;
select TacGiaID, count(ID) as soluong from TinTuc group by TacGiaID;
select TacGiaID, count(ID) as soluong from TinTuc group by TacGiaID having count(ID)>1;

-- tong hop
select top 1 ID, Ten as TenTG, HinhAnh, GioiThieu from TacGia where ID in(1,2,3) order by ID desc;
--from -> where ->order -> select -> as

-- subquery
select*from TacGia;
select*from TinTuc;
-- IN Tran The Duong
-- OUT Danh sach tin tuc
-- logic tu ten TG tim ID cua Tac gia, dem ID do tim trong tacgiaid cua bang tin tuc
declare @tgID int =(select ID from TacGia where Ten like'Tran The Duong');
select*from TinTuc where TacGiaID = @tgID;
select*from TinTuc where TacGiaID in (select ID from TacGia where Ten like'%Tran The Duong%');
-- from => where (subquery) - select

-- join table
select*from TinTuc;

select TinTuc.*,TacGia.Ten from TinTuc
inner join TacGia on TinTuc.TacGiaID = TacGia.ID;

select TinTuc.*,TacGia.Ten from TinTuc
left join TacGia on TinTuc.TacGiaID = TacGia.ID;

select TinTuc.*,TacGia.Ten from TinTuc
right join TacGia on TinTuc.TacGiaID = TacGia.ID;

select TinTuc.*,TacGia.Ten as TenTacGia,DanhMuc.Ten as TenDanhMuc from TinTuc
inner join TacGia on TinTuc.TacGiaID = TacGia.ID
inner join DanhMuc on TinTuc.DanhMucID = DanhMuc.ID;

