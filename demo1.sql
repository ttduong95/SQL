

create table Lop(
MaLop char(10) primary key,
TenLop char(10),
Phonghoc varchar(255),
);

create table SinhVien(
MaSV char(10) primary key,
TenSV varchar(255),
NgaySinh datetime,
Masvid char(10) foreign key references Lop(MaLop),

);
create table Mon(
MaMon char(10) primary key,
TenMon varchar(255),

);
create table KetQua(
ID int primary key,
LoaiKQ char(10),
Diem int,
MaKqid char(10) foreign key references Mon(MaMon),
MaKqSVid char(10) foreign key references SinhVien(MaSV),
);
drop table KetQua;
drop table Mon;
drop table SinhVien;
drop table Lop;
