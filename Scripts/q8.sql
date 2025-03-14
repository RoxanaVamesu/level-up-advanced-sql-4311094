SELECT
  e.firstName,
  e.lastName,
  CASE WHEN strftime('%m', soldDate) = '01'
        THEN salesAmount END as Jan,
  CASE WHEN strftime('%m', soldDate) = '02'
        THEN salesAmount END as Feb,
  CASE WHEN strftime('%m', soldDate) = '03'
        THEN salesAmount END as Mar,
  CASE WHEN strftime('%m', soldDate) = '04'
        THEN salesAmount END as Apr,
  CASE WHEN strftime('%m', soldDate) = '05'
        THEN salesAmount END as May,
  CASE WHEN strftime('%m', soldDate) = '06'
        THEN salesAmount END as Jun,
  CASE WHEN strftime('%m', soldDate) = '07'
        THEN salesAmount END as Jul,
  CASE WHEN strftime('%m', soldDate) = '08'
        THEN salesAmount END as Aug,
  CASE WHEN strftime('%m', soldDate) = '09'
        THEN salesAmount END as Sep,
  CASE WHEN strftime('%m', soldDate) = '10'
        THEN salesAmount END as Oct,
  CASE WHEN strftime('%m', soldDate) = '11'
        THEN salesAmount END as Nov,
  CASE WHEN strftime('%m', soldDate) = '12'
        THEN salesAmount END as Dec
FROM sales s
INNER JOIN employee e 
  ON s.employeeId = e.employeeId
where s.soldDate >= '2021-01-01'
and s.soldDate < '2022-01-01'
GROUP BY e.firstName, e.lastName
ORDER BY e.firstName, e.lastName