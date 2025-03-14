select
  e.firstName,
  e.lastName,
  e.title,
  e.startDate,
  s.salesId
from employee e
left outer join sales s
  on s.employeeId = e.employeeId
where e.title = 'Sales Person'
and s.salesId is null