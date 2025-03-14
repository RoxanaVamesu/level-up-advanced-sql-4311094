SELECT 
  c.firstName,
  c.lastName,
  c.email ,
  s.salesAmount,
  s.soldDate
FROM customer c
inner join sales s
  ON c.customerId = s.customerId

UNION

SELECT 
  c.firstName,
  c.lastName,
  c.email ,
  s.salesAmount,
  s.soldDate
FROM customer c
LEFT JOIN sales s
  ON c.customerId = s.customerId
WHERE s.salesId is null

UNION

select 
  c.firstName,
  c.lastName,
  c.email ,
  s.salesAmount,
  s.soldDate
from Sales s
left join customer c
  on s.customerId = c.customerId
where c.customerId is null
