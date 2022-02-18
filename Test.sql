--1
create database SellingPoint;
--2
create table Categories (
CateID char(6) primary key,
CateName nvarchar(100) not null,
Description nvarchar(200),
);

create table Part(
PartID int primary key identity(1,1),
PartName nvarchar(100)not null,
CateID char(6) foreign key references Categories(CateID),
Description nvarchar(1000),
Price money not null default'0',
Quantity int default'0',
Warranty int default'1',
Photo nvarchar(200) default'photo/nophoto.png',
);

---3
insert into Categories(CateID,CateName,Description) values (1,N'Ram', N'Ram của HP'),
(2,N'CPU',N'CPU của DELL'),(3,N'Ổ Cứng',N'Ổ cứng của Apple');
select*from Categories;

insert into Part(PartName,CateID,Description,Price,Quantity,Warranty,Photo) values (N'Máy tính',1,N'Máy tính DELL',200,20,2,N'image/Photo1.png'), 
(N'Điện thoại',2,N'Điện thoại NoKIA',100,10,5,N'image/Photo2.png'), (N'Tai Nghe',3,N'Tai nghe DELL',600,50,6,N'image/Photo3.png');

--4
select*from Part where Price >100;
-- 5
select*from Part where Part.CateID in(select CateID from Categories where CateName like'CPU');
--6
create view View_Part as select PartID,PartName,Price,Quantity from Part inner join Categories on Part.CateID= Categories.CateID;
select*from View_Part;
--7
 Create a view v_TopParts about 5 parts with the most expensive price. 
create view View_TopParts  as
select top 5  * from Part order by Price desc;
select *from View_Part;