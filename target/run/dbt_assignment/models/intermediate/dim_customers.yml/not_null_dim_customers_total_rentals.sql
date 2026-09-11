
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_rentals
from "analytics"."dbt_assignment_assignment"."dim_customers"
where total_rentals is null



  
  
      
    ) dbt_internal_test