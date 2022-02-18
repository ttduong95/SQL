create table Hang(
MaSoHang int primary key,
TenHang varchar(255),
DiaChi varchar(255),
SDT char(12),
);

create table SanPham(
ID int primary key identity(1,1),
TenSP varchar(255),
Mota varchar(255),
Donvi char(10),
Gia int,
SoLuong int,
IDHang int foreign key references Hang(MaSoHang),
);

insert into Hang(MaSoHang,TenHang,DiaChi,SDT) values (123,'Asus','USA','983232');
insert into Hang(MaSoHang,TenHang,DiaChi,SDT) values(124,'Dell','USA','983fsdfs2')
select*from Hang;

insert into SanPham(TenSP,Mota,Donvi,Gia,SoLuong,IDHang) values ('May tinh t450','May nhap cu','Chiec','1000',10,123);
insert into SanPham(TenSP,Mota,Donvi,Gia,SoLuong,IDHang) values ('Dien Thoai NoKiA5670','Dien thoai dang hot','Chiec','200',200,123);
insert into SanPham(TenSP,Mota,Donvi,Gia,SoLuong,IDHang) values('May in SamSung 450','May in dang laoi bt','Chiec','100',10,123);
insert into SanPham(TenSP,Mota,Donvi,Gia,SoLuong,IDHang) values ('Dien Thoai NoKiA5670','Dien thoai dang hot','Chiec','200',200,124);
insert into SanPham(TenSP,Mota,Donvi,Gia,SoLuong,IDHang) values('May in SamSung 450','May in dang laoi bt','Chiec','100',10,124);
select*from SanPham;
--bt4
select TenHang from Hang;
select TenSP from SanPham;
--bt5
select*from Hang order by TenHang desc;
select*from SanPham order by ID desc;

select TenHang,MaSoHang,DiaChi,SDT from Hang where TenHang like('Asus');

select*from SanPham where SoLuong<11;
select*from Hang;
select*from SanPham;
select*from SanPham where IDHang in(select MaSoHang from Hang where TenHang like'Asus');

--bt 6
select count(MaSoHang) as SoHang from Hang ;
select count(ID) as SoSP from SanPham;

select count(ID) as SoLuongSP1Hang from SanPham where IDHang in(select MaSoHang from Hang where TenHang like'%Asus%');
select count(ID) as SoLuongSP1Hang from SanPham where IDHang in(select MaSoHang from Hang where TenHang like'%Dell%');
select sum(SoLuong) as Tongdausp from SanPham;

--bt 7
update Hang set SDT= '' where ID <=5;