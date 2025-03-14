SELECT
  e.employeeId,
  e.firstName,
  e.lastName,
  count (*) as NumOfCarsSold,
  min(salesAmount) as MinSalesAmount,
  max(salesAmount) as MaxSalesAmount
FROM sales s
INNER JOIN employee e 
  on s.employeeId = e.employeeId
GROUP BY s.employeeId, e.firstName, e.lastName
HAVING count(*) > 5