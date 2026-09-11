
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select first_rented_at
from "analytics"."dbt_assignment_assignment"."mart_customer_performance"
where first_rented_at is null



  
  
      
    ) dbt_internal_test