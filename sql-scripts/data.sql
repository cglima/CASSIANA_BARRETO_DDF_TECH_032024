use AdventureWorksDW2022;

select DateKey, 
       FullDateAlternateKey AS data, 
	   EnglishDayNameOfWeek AS dia, 
       EnglishMonthName AS mes, 
	   CalendarYear AS ano
from DimDate;