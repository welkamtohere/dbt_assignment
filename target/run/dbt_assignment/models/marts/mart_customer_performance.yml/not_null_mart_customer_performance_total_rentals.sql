
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_rentals
from "analytics"."dbt_assignment_assignment"."mart_customer_performance"
where total_rentals is null



  
  
      
    ) dbt_internal_test