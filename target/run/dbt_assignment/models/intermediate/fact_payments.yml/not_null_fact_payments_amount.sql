
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select amount
from "analytics"."dbt_assignment_assignment"."fact_payments"
where amount is null



  
  
      
    ) dbt_internal_test