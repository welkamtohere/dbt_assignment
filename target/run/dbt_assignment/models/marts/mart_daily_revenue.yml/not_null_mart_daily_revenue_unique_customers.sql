
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select unique_customers
from "analytics"."dbt_assignment_assignment"."mart_daily_revenue"
where unique_customers is null



  
  
      
    ) dbt_internal_test