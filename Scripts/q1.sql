SELECT 
  Empl.firstName as FirstName,
  Empl.lastName as LastName,
  Empl.title,
  Man.firstName as ManagerFirstName,
  Man.lastName as ManagerLastName
FROM employee Empl
INNER JOIN employee Man on Empl.managerId = Man.employeeId
