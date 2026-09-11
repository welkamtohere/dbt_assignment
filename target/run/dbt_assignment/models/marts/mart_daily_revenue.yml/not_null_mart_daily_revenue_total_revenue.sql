
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_revenue
from "analytics"."dbt_assignment_assignment"."mart_daily_revenue"
where total_revenue is null



  
  
      
    ) dbt_internal_test