
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select returned_at
from "analytics"."dbt_assignment_assignment"."stg_rentals"
where returned_at is null



  
  
      
    ) dbt_internal_test