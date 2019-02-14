use KFC
create view vw_Adventure as
select YM.FirstName as YName,
       YM.LastName as SureName,
	   YMF.Smoney as [Money],
	   DMK.FirstName as Dname,
	   DMK.LastName as DLastname
from YerevanMall as YM inner join  YerevanMAllFinance as YMF 
on YM.id=YMF.Id
inner join DalmaMallKFC as DMK 
on DMK.id=YMF.id
select * from vw_Adventure


create view vw_Cherectroes as 
select YM.FirstName,
ym.LastName as [Name],
ym.Email as SureName,
ym.Salary as [Money]
from YerevanMall as YM inner join YerevanMAllFinance as YMF
on YM.Id=YMF.Id and YM.FirstName like N'%Ա%'

select * from vw_Cherectroes