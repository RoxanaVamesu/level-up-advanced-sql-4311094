SELECT 
  e.employeeId,
  e.firstName, 
  e.lastName,
  count(*) as NumOfCarsSold
FROM sales s 
INNER JOIN employee e 
  ON s.employeeId = e.employeeId
GROUP BY s.employeeId, e.firstName, e.lastName
ORDER BY NumOfCarsSold desc;