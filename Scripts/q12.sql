WITH MonthlySales as (
SELECT
  count(*) as NumberOfModels,
  strftime('%Y-%m', s.soldDate) as SoldMonth
from sales s
group by SoldMonth
)

SELECT 
  SoldMonth as Month,
  NumberOfModels as CurrentMonthSales,
  lag(NumberOfModels, 1, 0) OVER (ORDER by SoldMonth) as PreviousMonthSales
FROM MonthlySales
