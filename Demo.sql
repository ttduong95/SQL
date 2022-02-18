create table TacGia(
-- cac columns khai bao o day
ID int primary key identity(1,1), -- khoa chinh viet vao day(PK)--
Ten nvarchar(255) not null unique, --- thêm n vào đầu để viết chữ có dấu--
HinhAnh nchar(100),
GioiThieu ntext
);

--xoa Table
--drop table TacGia;
create table DanhMuc(
ID int primary key identity(1,1),
Ten nvarchar(255) not null unique, -- ko de trong - ko trung lap--
);
create table TinTuc(
ID int primary key identity(1,1),
NoiDung ntext,
HinhAnh nchar(50),
TieuDe nvarchar(255) not null unique,
TomTat text,
NgayDang datetime check(NgayDang <=Getdate()), -- check ngay thang theo he thong
NgayXB datetime not null,
Link nchar(50) unique,
Tag nvarchar(255),
DanhMucID int foreign key references DanhMuc(ID) not null,
TacGiaID int foreign key references TacGia(ID) not null,
);

create table BinhLuan(
ID int primary key identity(1,1),
TenNguoi nvarchar(255) not null,
NgayBinhLuan datetime,
SoLuotThich int check(SoLuotThich >=0), -- check like lon hon 0--
NoiDung ntext,
IP char(15),
TinTucID int foreign key references TinTuc(ID) not null,
);
drop table BinhLuan;
drop table TinTuc;
drop table DanhMuc;
drop table TacGia;
