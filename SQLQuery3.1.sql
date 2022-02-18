create table Lophoc(
ID int primary key identity(1,1),
TenLop varchar(255),
);
create table SinhVien1(
ID int primary key identity(1,1),
TenSV nvarchar(255),
SVID int foreign key references Lophoc(ID),
);
Insert into Lophoc(TenLop) values ('2110E'),('2110A');
select*from Lophoc;
insert into SinhVien1(TenSV,SVID) values ('dadad',1),('dadadad',1),('dadad',null);
select*from SinhVien1;





alter table Lophoc add Phong char(20);
alter table Lophoc drop column Phong;
alter table Lophoc alter column Phong varchar(20);

alter table Lophoc add check(len(Phong)>10); -- len la dem ky tu
alter table Lophoc add constraint checkPhong check (len(Phong)>10);
alter table Lophoc drop constraint checkPhong;

select SinhVien1.*,Lophoc.TenLop,Lophoc.Phong from SinhVien1 left join Lophoc on SinhVien1.SVID= Lophoc.ID where Lophoc.TenLop like '2110E' order by SinhVien1.TenSV desc;

-- tao view 
create view SinhVien1_Lophoc as
select SinhVien1.*,Lophoc.TenLop,Lophoc.Phong from SinhVien1 left join Lophoc on SinhVien1.SVID=Lophoc.ID;
-- su dung view nhu 1 table
select*from SinhVien1_Lophoc where TenLop like '2110E' order by TenSV desc;


-- index
create table KetQua1(
 sinhvien varchar(20),
 diemthi int,
 xeploai char(1),
);

insert into KetQua1(sinhvien,diemthi,xeploai)
values ('hoat',4,'D'),('Dung',5,'D');
select*from KetQua1;

create clustered index dt_index on KetQua1(diemthi);
create index xeploai_index on KetQua1(xeploai); -- sau nay neu select loc theo xeploai nhanh hon.

drop index xeploai_index

