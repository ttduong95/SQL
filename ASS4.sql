create table NHACUNGCAP(
MaNhaCC char(15)  primary key ,
TenNhaCC varchar(255) not null,
DiaChi varchar(255) not null,
SoDT char(12),
MaSoThue char(10),
);

create table LOAIDICHVU(
MaLoaiDV char(15) primary key ,
TenLoaiDV varchar(255),
);

create table MUCPHI(
MaMP char(15) primary key ,
DonGia int,
Mota text,
);

create table DONGXE(
DongXe char(15) primary key ,
HangXe char(15) not null ,
SoChoNgoi int,
);
create table DANGKYCUNGCAP(
MaDKCC char(15) primary key ,
MaNhaCC char(15) foreign key references NHACUNGCAP(MaNhaCC),
MaLoaiDV char(15) foreign key references LOAIDICHVU(MaLoaiDV),
DongXe char(15) foreign key references DONGXE(DongXe),
MaMP char(15) foreign key references MUCPHI(MaMP),
NgayBatDauCungCap date check (NgayBatDauCungCap<=Getdate()),
NgayKetThucCungCap date,
SoLuongXeDangKy int,

);
drop table DANGKYCUNGCAP;
drop table DONGXE;
drop table MUCPHI;
drop table LOAIDICHVU;
drop table NHACUNGCAP;