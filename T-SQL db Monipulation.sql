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
YerevanMallId int FOREIGN KEY REFERENCES YerevanMall(Id)

);
 ALTER table YerevanMallFinance
 add Id int identity primary key
insert YerevanMAllFinance
values
(100000,1),
(100000,2),
(80000,3),
(80000,4),
(190000,5),
(300000,6)

--Create New Table SalaryOfEmlployees and insert values from YerevanMall ande YerevanMallFinance
select YM.FirstName,YM.LastName,YMF.Smoney into SalaryOfEmlployees from YerevanMall YM
Join YerevanMAllFinance YMF on YM.Id=YMF.YerevanMallId 
 





 





 

    




 




