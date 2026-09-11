
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select email
from "analytics"."dbt_assignment_assignment"."stg_customers"
where email is null



  
  
      
    ) dbt_internal_test