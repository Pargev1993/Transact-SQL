
	use KFC
	go
	 create procedure AddProcedur as
	 select  FirstName,LastName from  YerevanMall
	 join YerevanMAllFinance on YerevanMall.Id=YerevanMAllFinance.Id
	exec AddProcedur
	
	select * from AdventureworksDW2016CTP3.dbo.sysdiagrams
	use AdventureworksDW2016CTP3
	go
	create procedure Adventure as
	select * from AdventureworksDW2016CTP3.dbo.sysdiagrams as [AS]
	left join AdventureworksDW2016CTP3.dbo.DimAccount as AD
	on [as].diagram_id=AD.AccountKey
	exec Adventure

