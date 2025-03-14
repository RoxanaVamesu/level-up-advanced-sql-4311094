with cte as (
  SELECT
    strftime('%Y', soldDate) AS soldYear,
    salesAmount
  FROM sales
)

SELECT
  SoldYear,
  format("$%.2f", sum(salesAmount)) as AnnualSales
FROM
cte 
GROUP BY SoldYear
order by SoldYear