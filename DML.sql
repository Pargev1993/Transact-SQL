use KFC
create Database KFC

use KFC

create table YerevanMall

(

Id int identity  not Null primary key,

FirstName Nvarchar(15),

Age INT check(Age>16 and Age<65)

constraint DF_Age default 18,



LastName Nvarchar(15),

WorkData char(12),

Position Nvarchar(15),

Salary Money, 

Experience Tinyint,



Email varchar(50) check(Email!=Null), 

CreateDate Date default getdate(),

);

insert YerevanMall(FirstName,LastName,WorkData,Position,Salary,Experience,CreateDate,Email,Age)

Values

(N'Կարապետյան' ,N'Անահիտ','25-06-2015',N'Trainer',100000,3,default,'Anahit@mail.ru',21),

(N'Գայվանդով' ,N'Վարդան','01-05-2016',N'Trainer',100000,2,default,'Vardan@mail.ru',23), 

(N'Շահգենյան' ,N'Անդրանիկ','12-09-2016',N'Staff Member',80000,2,default,'Ando@gmail.com',23),

(N'Պետրոսյան' ,N'Սերոժ','25-07-2017',N'Trainer',80000,1,default,'Seroj@mail.ru',17),

(N'Զաքարյան' ,N'Սյոմա','25-06-2010',N'Deputy Director',190000,8,default,'Syoma@mail.ru',27),

(N'Ավետիկ' ,N'Չնավարյան','20-07-2013',N'Director',300000,5,default,'Avo@mail.ru',40)



Create Table YerevanMAllFinance

(

Smoney money,

YerevanMallId int FOREIGN KEY REFERENCES YerevanMall(Id),



);
alter table YerevanMallFinance
add DalmaMAllKFCID int Foreign key references DalmaMallKFC(Id)

 ALTER table YerevanMallFinance

 add Id int identity primary key

insert YerevanMAllFinance

values

(100000,1,1),

(100000,2,2),

(80000,3,3),

(80000,4,4),

(190000,5,5),

(300000,6,6)



--Create New Table SalaryOfEmlployees and insert values from YerevanMall ande YerevanMallFinance

select YM.FirstName,YM.LastName,YMF.Smoney into SalaryOfEmlployees from YerevanMall YM

Join YerevanMAllFinance YMF on YM.Id=YMF.YerevanMallId 

 select * from SalaryOfEmlployees

where Smoney>100000

use KFC

 Create Table DalmaMallKFC

 (

 Id int identity  not Null primary key,

FirstName Nvarchar(15),

Age INT check(Age>16 and Age<65)

constraint Age default 18,



LastName Nvarchar(15),

WorkData DATETIME ,

Position Nvarchar(15),

Salary Money, 

Experience Tinyint,



Email varchar(50) check(Email!=Null), 

CreateDate Date default getdate(),

 )


 insert DalmaMallKFC(FirstName,LastName,WorkData,Position,Salary,Experience,CreateDate,Email,Age)

Values

(N'Բարսեղյան' ,N'Գեվոր',27-02-2015,N'Trainer',100000,3,default,'Gvor@mail.ru',21),

(N'Ավագյյան' ,N'Հենրիկ',04-09-2016,N'Trainer',100000,2,default,'Heno@mail.ru',23), 

(N'Գրիգորյան' ,N'Գուրգեն',22-07-2015,N'Staff Member',80000,2,default,'Gugo@gmail.com',23),

(N'Պետրոսյան' ,N'Սյուզի',20-01-2016,N'Trainer',80000,1,default,'Syuzi@mail.ru',17),

(N'Պետրոսյան' ,N'Սիլվա',20-09-2010,N'Deputy Director',190000,8,default,'Silva@mail.ru',27),

(N'Մնացականյան' ,N'Մնացական',11-09-2013,N'Director',300000,5,default,'Mno@mail.ru',40)

select *from DalmaMallKFC
select DMK.FirstName,DMK.LastName,YMF.Smoney into SalaryOfEmlploy from DalmaMallKFC DMK

join YerevanMAllFinance  YMF on DMK.Id=YMF.DalmaMallKFCID
select Salary from YerevanMall
union 
select salary from  DalmaMallKFC order by Salary

select top 3 FirstName,LastName ,Salary
from YerevanMall
order by salary desc



select top 3 firstName,LastName,Smoney from SalaryOfEmlployees
union
select top 3 firstName,LastName,Smoney from SalaryOfEmlploy order by Smoney Desc

update DalmaMallKFC 
set Age=25
where Id=4

delete from DalmaMallKFC where LastName ='Հենրիկ'


select * from YerevanMall
where FirstName like N'ա%'

