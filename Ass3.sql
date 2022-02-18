create table KH(
ID int primary key,
TenKH varchar(255),
DiaChi varchar(255),
DienThoai char(15),
);

create table DonHang(
MaDH int primary key,
TongTien int,
iddonhang int foreign key references KH(ID),
);
create table SanPham(
ID int primary key,
TenSanPham varchar(255),
LoaiSP varchar(255),
);
create table LK(
idkh int foreign key references DonHang(MaDH),
iddh int foreign key references SanPham(ID),
);
