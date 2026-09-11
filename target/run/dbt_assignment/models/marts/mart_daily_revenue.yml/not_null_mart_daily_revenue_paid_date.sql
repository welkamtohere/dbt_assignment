
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select paid_date
from "analytics"."dbt_assignment_assignment"."mart_daily_revenue"
where paid_date is null



  
  
      
    ) dbt_internal_test