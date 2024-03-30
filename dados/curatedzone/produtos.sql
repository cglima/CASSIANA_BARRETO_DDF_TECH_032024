use AdventureWorksDW2022;

select ProductKey, 
       dp.ProductSubcategoryKey, 
	   EnglishProductName as [ProductName], 
       Category, 
	   Subcategory, 
	   StandardCost, 
	   Color, 
	   ModelName, 
case
    when Status is null then 'Outdate' 
	when Status = 'Current' then 'Current'
end as 'Status'
from DimProduct dp
inner join (select dpc.ProductCategoryKey, 
                   ProductSubcategoryKey, 
				   EnglishProductCategoryName as [Category], 
                   EnglishProductSubcategoryName as [Subcategory]
FROM DimProductCategory dpc
INNER JOIN DimProductSubcategory dps
ON dpc.ProductCategoryKey = dps.ProductCategoryKey) dpc
ON dp.ProductSubcategoryKey = dpc.ProductSubcategoryKey;