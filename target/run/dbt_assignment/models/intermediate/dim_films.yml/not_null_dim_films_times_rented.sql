
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select times_rented
from "analytics"."dbt_assignment_assignment"."dim_films"
where times_rented is null



  
  
      
    ) dbt_internal_test