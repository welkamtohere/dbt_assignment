
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select create_date
from "analytics"."dbt_assignment_assignment"."stg_customers"
where create_date is null



  
  
      
    ) dbt_internal_test