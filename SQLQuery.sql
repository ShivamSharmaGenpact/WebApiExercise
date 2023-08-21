create database ProductsDb
use ProductsDb
create table CompanyInfo(
CId int primary key, CName nvarchar(50) not null unique)

insert into CompanyInfo values(1,'Samsung'),(2,'HP'),(3,'Apple'),
(4,'Dell'),(5,'Toshiba'),(6,'Redmi')

Select * from CompanyInfo

create table ProductInfo(
PId int Identity(101,1) Primary Key, 
PName nvarchar(50),
PPrice float,
PMDate DateTime,
CId int,
Foreign Key (CId) references CompanyInfo(CId))

insert into ProductInfo values('Laptop',25000,'12/12/2023',1)
insert into ProductInfo values('Laptop',25000,'12/12/2023',2)
insert into ProductInfo values('Mobile',25000,'12/12/2023',2)
insert into ProductInfo values('Laptop',25000,'12/12/2023',3)
insert into ProductInfo values('Mobile',25000,'12/12/2023',3)
insert into ProductInfo values('Laptop',25000,'12/12/2023',5)
insert into ProductInfo values('Mobile',25000,'12/12/2023',5)
insert into ProductInfo values('Earpod',25000,'12/12/2023',3)
insert into ProductInfo values('Laptop',25000,'12/12/2023',6)
insert into ProductInfo values('Mobile',25000,'12/12/2023',1)
Select * from ProductInfo