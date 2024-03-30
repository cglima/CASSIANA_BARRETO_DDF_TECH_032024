use AdventureWorksDW2022;

select
	ProductKey,
	OrderDateKey, 
	CustomerKey,
	SalesTerritoryKey,
	OrderQuantity,
	ProductStandardCost,
	SalesAmount, 
	cast(OrderDate as date) as data_pedido
from
	FactInternetSales;