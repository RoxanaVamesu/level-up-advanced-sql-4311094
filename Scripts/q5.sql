SELECT
  e.employeeId,
  e.firstName,
  e.lastName,
  min(s.salesAmount) as MinAmount,
  max(s.salesAmount) as MaxAmount
FROM Sales s 
INNER JOIN employee e 
  ON s.employeeId = e.employeeId

GROUP BY s.employeeId, e.firstName, e.lastName