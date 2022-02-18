create procedure liket_sinhvien as
select*from SinhVien1;
select*from Lophoc;

exec liket_sinhvien;
execute liket_sinhvien;

create procedure them_lophoc @tenlop varchar(100), @phong varchar(20) as
insert into Lophoc(TenLop,Phong) values (@tenlop,@phong);

exec them_lophoc @tenlop='T2110E',@phong='Phong b12,TTT';
drop procedure them_lophoc;

create procedure them_lophoc_aptech @tenlop varchar(100), @phong varchar(20) as
if @tenlop like'T%'
	begin
insert into Lophoc(TenLop,Phong) values (@tenlop,@phong);
	end
	else
	begin
	print'Ten lop khong hop le';
	end;

	select*from Lophoc;
	exec them_lophoc_aptech @tenlop='A2210E',@phong='Phong b02,TTT';
	
-- trigger
	select*from Lophoc;
delete from Lophoc where ID =5;

create trigger khong_cho_xoa_lophoc
on Lophoc -- table
after delete --- event
as
if exists (select*from deleted where TenLop like'T2%')
begin
print 'khong cho xoa lop hoc';
rollback transaction; -- lam cho lenh vua thuc hien bi bo qua
end;
drop trigger khong_cho_xoa_lophoc;

-- inserted
