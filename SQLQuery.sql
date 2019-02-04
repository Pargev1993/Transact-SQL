create database AbouteCar
use AbouteCar

Create Table AbouteCar
(Id int identity not null primary key,
[Type] Nvarchar(10),
speed Decimal(10,4), 
[Year] int,
)
insert Car([Type],speed,[Year])
Values
('Subaru',340,'2010')
use AbouteCar
EXEC sp_rename 'Cars','AbouteCar';
 

 declare @num int
 set @num=15
 print  @num

 declare @string Nchar(10)
 set @string=N'Բարեվ'
 print @string









