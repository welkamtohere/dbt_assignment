
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select first_name
from "analytics"."dbt_assignment_assignment"."stg_customers"
where first_name is null



  
  
      
    ) dbt_internal_test