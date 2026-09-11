
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select last_update
from "analytics"."dbt_assignment_assignment"."stg_customers"
where last_update is null



  
  
      
    ) dbt_internal_test