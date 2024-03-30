use AdventureWorksDW2022;

select GeographyKey, 
       City as cidade, 
	   EnglishCountryRegionName as pais, 
	   SalesTerritoryRegion, 
       SalesTerritoryGroup, 
	   PostalCode as codigo_postal, 
	   dst.SalesTerritoryKey
from DimGeography dg 
inner join DimSalesTerritory dst  on
 (dg.SalesTerritoryKey = dst.SalesTerritoryKey);