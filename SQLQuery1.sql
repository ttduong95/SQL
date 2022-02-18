select *from TacGia;--- Liet ke dau giữ liệu
--them du lieu
insert into TacGIa(Ten,HinhAnh,GioiThieu) values('Mai huy hoat','hoatmh.jpg','Lop truong');
insert into TacGIa(Ten,HinhAnh,GioiThieu) values('Tran The Duong','hoatmh.jpg','Lop truong');
insert into TacGIa(Ten,HinhAnh,GioiThieu) values('Nguyen Tuong Linh','hoatmh.jpg','Lop truong');

select*from DanhMuc;
Insert into DanhMuc(Ten) values(N'Bóng đá');
Insert into DanhMuc(Ten) values(N'Thời sự');
Insert into DanhMuc(Ten) values(N'Phim');

insert into TinTuc(NoiDung,HinhAnh,TieuDe,TomTat,NgayDang,NgayXB,Link,Tag,DanhMucID,TacGiaID) 
values ('noi dung chi tiet tin tuc','hinhanhtintuc.jpg','Bansdsadas tifsfsfdn thoi su ngay 24.1','tom tat tin tuc ngay 24/1','2022-01-24 18:59:00','2022-01-24 19:30:00','bantinthoissfsfcsfsfsddu24-01.html','tintuc',1,1);
insert into TinTuc(NoiDung,HinhAnh,TieuDe,TomTat,NgayDang,NgayXB,Link,Tag,DanhMucID,TacGiaID) 
values ('noi fsfsi tiet tin tuc','hinhanhtintuc.jpg','Ban thoi su ngay 24.1','tom tat tin tuc ngay 25/1','2022-01-28 18:59:00','2022-01-28 19:30:00','bantfsfu24-01.html','tintuc',1,11);
insert into TinTuc(NoiDung,HinhAnh,TieuDe,TomTat,NgayDang,NgayXB,Link,Tag,DanhMucID,TacGiaID) 
values ('noi dggsftiet tin tuc','hinhanhtintuc.jpg','Bansdsadas fdn thoi su ngay 26.1','tom tat tin tuc ngay 26/1','2022-01-26 18:59:00','2022-01-26 19:30:00','bantiddudfs24-01.html','tintuc',1,12);


select*from TinTuc;

insert into BinhLuan(TenNguoi,NgayBinhLuan,SoLuotThich,NoiDung,IP,TinTucID) 
values('Duongtt','2022-01-24','999','anh yeu','172.12.13512',5); -- khoa phu phai trung voi khoa chinh o tren (tintucID la 5 nen phai lay 5)--

select*from BinhLuan;

-- chinh sua du lieu--
update TinTuc set NoiDung= 'ban tingdfdg' where ID <=5;
delete from TinTuc where ID >10;