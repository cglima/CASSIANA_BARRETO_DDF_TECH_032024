select 
	dc.CustomerKey ,
	dc.GeographyKey ,
	concat (dc.FirstName, '', dc.LastName) as nome_cliente ,
	dc.BirthDate as data_nascimento , case 
		when dc.MaritalStatus = 'M' then 'Married'
		when dc.MaritalStatus = 'S' then 'Single'
	end as estado_civil , 
				case
					when dc.Gender = 'M' then 'Male'
					when dc.Gender = 'F' then 'Female'
	end as sexo	
from DimCustomer dc 