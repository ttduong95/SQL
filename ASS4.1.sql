
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values('NCC001','Cty TNHH Toan Phat','Hai Chau','05513999888','568941');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values('NCC002','Cty TNHH Dong du','Hai Chau','05513999778','56834321');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values('NCC003','ong Nguyen Van A','Truc Ninh','05513999558','563131');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values('NCC004','Cty TNHH Toan Cau Xanh','Hai Hai','05513999866','5131941');
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values('NCC005','Ong Nguyen Van B','Hai Duong','05513999899','5453941');
select*from NHACUNGCAP;

insert into LOAIDICHVU(MaLoaiDV,TenLoaiDV) values('DV01','Dich vu xe taxi');
insert into LOAIDICHVU(MaLoaiDV,TenLoaiDV) values('DV02','Dich vu xe buyt cong cong theo tuyen co dinh');
insert into LOAIDICHVU(MaLoaiDV,TenLoaiDV) values('DV03','Dich vu xe cho thue theo hop dong');
select*from LOAIDICHVU;

insert into MUCPHI(MaMP,DonGia,Mota) values('MP01','10000','ap dung tu 1/2015');
insert into MUCPHI(MaMP,DonGia,Mota) values('MP02','15000','ap dung tu 2/2015');
insert into MUCPHI(MaMP,DonGia,Mota) values('MP03','20000','ap dung tu 1/2010');
insert into MUCPHI(MaMP,DonGia,Mota) values('MP04','25000','ap dung tu 2/2011');
select*from MUCPHI;

insert into DONGXE(DongXe,HangXe,SoChoNgoi) values('Hiace','Toyota',16);
insert into DONGXE(DongXe,HangXe,SoChoNgoi) values('Vios','Toyota',5);
insert into DONGXE(DongXe,HangXe,SoChoNgoi) values('Escape','Ford',5);
insert into DONGXE(DongXe,HangXe,SoChoNgoi) values('Cerato','KIA',7);
insert into DONGXE(DongXe,HangXe,SoChoNgoi) values('Forte','KIA',5);
select*from DONGXE;

insert into DANGKYCUNGCAP(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values('DK001','NCC001','DV01','Hiace','MP01','2015-11-20','2016-11-20',10);
insert into DANGKYCUNGCAP(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values('DK002','NCC002','DV02','Vios','MP02','2015-11-20','2018-11-20',3);
insert into DANGKYCUNGCAP(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values('DK003','NCC003','DV03','Escape','MP03','2018-11-20','2019-11-20',5);
insert into DANGKYCUNGCAP(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values('DK004','NCC003','DV01','Escape','MP02','2019-11-20','2021-11-20',11);
insert into DANGKYCUNGCAP(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values('DK005','NCC001','DV02','Escape','MP01','2018-11-20','2020-11-20',2);


select*from DANGKYCUNGCAP;


