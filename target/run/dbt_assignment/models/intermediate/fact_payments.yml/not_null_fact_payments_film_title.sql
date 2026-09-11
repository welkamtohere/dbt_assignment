
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select film_title
from "analytics"."dbt_assignment_assignment"."fact_payments"
where film_title is null



  
  
      
    ) dbt_internal_test