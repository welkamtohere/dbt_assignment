
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select name
from "analytics"."dbt_assignment_assignment"."stg_categories"
where name is null



  
  
      
    ) dbt_internal_test