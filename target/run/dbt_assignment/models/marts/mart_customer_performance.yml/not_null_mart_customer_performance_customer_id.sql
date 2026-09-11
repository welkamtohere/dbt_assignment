
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select customer_id
from "analytics"."dbt_assignment_assignment"."mart_customer_performance"
where customer_id is null



  
  
      
    ) dbt_internal_test