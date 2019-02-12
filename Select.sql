select * from AdventureworksDW2016CTP3.dbo.FactFinance
select distinct productalternateKey from AdventureworksDW2016CTP3.dbo.DimProduct
select distinct OrganizationKey from  AdventureworksDW2016CTP3.dbo.FactFinance
select  AccountKey +'('+ Amount+')' ,DateKey  from AdventureworksDW2016CTP3.dbo.FactFinance

select top 3 * from AdventureworksDW2016CTP3.dbo.FactFinance


select top 3  percent * from AdventureworksDW2016CTP3.dbo.FactFinance


select  * from AdventureworksDW2016CTP3.dbo.FactFinance
order by FinanceKey
OFFSET 2 ROWS
 FETCH NEXT 3 ROWS ONLY
