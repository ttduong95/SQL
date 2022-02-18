create table LoaiSach(
ID int primary key identity(1,1),
TenLS varchar(255) not null,
);
create table NXB(
ID int primary key identity(1,1),
TenNXB varchar(255) not null,
DiaChi varchar(255) not null,
);
create table TacGia(
ID int primary key identity(1,1),
TenTG varchar(255) not null,
);
create table Sach(
MaSach varchar(20) primary key,
TenSach varchar(255) not null,
NoiDung text,
Namxb datetime not null,
Lanxb int not null,
Gia int check(Gia >0),
SL int not null check(SL>=0),
IDLoaiSach int foreign key references LoaiSach(ID),
IDNXB int foreign key references NXB(ID),
IDTG int foreign key references TacGia(ID),
);

insert into LoaiSach(TenLS) values('Khoa Hoc Xa Hoi');
insert into LoaiSach(TenLS) values('Toan Hoc'),('Tin Hoc'),('Ngu Van');
select*from LoaiSach;
insert into NXB(TenNXB,DiaChi) values('Tri Thuc','53 Nguyen Du, Hai Ba Trung, Ha Noi');
select*from NXB;
insert into TacGia(TenTG) values('Eran Katz');
select*from TacGia;
insert into Sach(MaSach,TenSach,NoiDung,Namxb,Lanxb,Gia,SL,IDLoaiSach,IDTG,IDNXB) values('B001','Tri Tue Do Thai','Ban cos muon biet....','2010',1,79000,100,1,1,1);
insert into Sach(MaSach,TenSach,NoiDung,Namxb,Lanxb,Gia,SL,IDLoaiSach,IDTG,IDNXB) values('B002','Tri Tue Viet Nam','Ban cos muon biet....','2015',1,99000,100,2,1,1);
select*from Sach;

select*from Sach where Namxb>2008;
select top 10* from Sach order by Gia desc ;
select TenSach from Sach where IDLoaiSach in (select ID from LoaiSach where TenLS like'Tin Hoc%' );
select TenSach from Sach where TenSach like'T%' order by Gia desc;
select TenSach from Sach where IDNXB in(select ID from NXB where TenNXB like'Tri Thuc%');
select *from NXB where ID in (select IDNXB from Sach where TenSach like'tri Tue Do Thai%');

select Sach.MaSach,Sach.TenSach,Sach.Namxb ,NXB.TenNXB from Sach left join NXB on Sach.IDNXB =NXB.ID ;
select Sach.MaSach,Sach.TenSach,Sach.Namxb ,LoaiSach.TenLS from Sach left join LoaiSach on Sach.IDLoaiSach =LoaiSach.ID ;

select Top 1(TenSach) from Sach   order by Gia desc;
select Top 1(TenSach) as SachSLLonNhat from Sach order by SL desc;
 
 select TenSach from Sach where IDTG in (select ID from TacGia where TenTG like'Eran Katz%');

 update Sach set Gia = Gia - Gia/10 ;
 select*from Sach;
 select count(IDLoaiSach) as SLSachKHXH from Sach where IDLoaiSach in(select ID from LoaiSach where TenLS like'Khoa hoc xa hoi');
  select count(IDLoaiSach) as SLSachTinHoc from Sach where IDLoaiSach in(select ID from LoaiSach where TenLS like'Tin hoc');

  create index tensach_index on Sach (TenSach);
  create index Masacj_index on Sach(MaSach); 
  create index Namxb_index on Sach(Namxb); 
  create index Gia_index on Sach(Gia); 
  create index SL_index on Sach(SL); 
  create index lanxb_index on Sach(Lanxb); 
  create view View_Sach as select Sach.MaSach, Sach.TenSach, Sach.Namxb, NXB.TenNXB from Sach left join NXB on Sach.IDNXB = NXB.ID ;
  drop view View_Sach ;
  select*from View_Sach;

  create procedure SP_Them_Sach @MaSach varchar(20), @TenSach varchar(255), @ND text, @Lanxb int, @Namxb date, @Gia int, @SL int ,@IDLS int, @IDNXB int,@IDTG int,@Tentg varchar(255),@tenLS varchar(255) as 
  begin
  insert into Sach(MaSach,TenSach,NoiDung,Lanxb,Namxb,Gia,SL,IDLoaiSach,IDNXB,IDTG) values(@MaSach,@TenSach,@ND,@Lanxb,@Namxb,@Gia,@SL, @IDLS,@IDNXB,@IDTG);
  insert into TacGia (TenTG) values (@tenTG);
  insert into LoaiSach(TenLS) values (@tenLS);

  drop procedure SP_Them_Sach;
  create procedure Sp_Tim_Sach @timsach varchar(255) as 
 select*from Sach where TenSach like @timsach;
  drop procedure Sp_Tim_Sach;

 
