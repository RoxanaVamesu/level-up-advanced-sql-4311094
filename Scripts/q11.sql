with MonthlySelling as(
SELECT
  strftime('%Y', soldDate) as soldYear,
  strftime('%m', soldDate) as soldMonth,
  sum(salesAmount) as salesAmount
FROM sales
GROUP BY soldYear, soldMonth
)

SELECT 
  soldYear,
  soldMonth,
  salesAmount,
  SUM(salesAmount) OVER (PARTITION BY soldYear 
                    ORDER BY soldYear, soldMonth) as TotalAnualSales
FROM
MonthlySelling
ORDER by soldYear, soldMonth