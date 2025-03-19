select 
  * 
from sales s
INNER JOIN inventory i on s.inventoryId = i.inventoryId
where i.modelId IN (
        select
          modelId 
        from model
        where EngineType = 'Electric'
      )
