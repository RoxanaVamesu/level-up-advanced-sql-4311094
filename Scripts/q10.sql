SELECT 
  e.firstName,
  e.lastName,
  m.model,
  s.salesId,
  count(m.model) as NumberSold,
  rank() OVER (PARTITION BY s.employeeId ORDER BY count(m.model) DESC) AS Rank
FROM sales s
INNER JOIN employee e ON s.employeeId = e.employeeId
INNER JOIN inventory i on s.inventoryId = i.inventoryId
INNER JOIN model m ON i.modelId = m.modelId
WHERE e.title = 'Sales Person'
GROUP BY e.lastName, e.firstName, m.model