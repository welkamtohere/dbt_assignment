
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select lifetime_payment_total
from "analytics"."dbt_assignment_assignment"."dim_customers"
where lifetime_payment_total is null



  
  
      
    ) dbt_internal_test