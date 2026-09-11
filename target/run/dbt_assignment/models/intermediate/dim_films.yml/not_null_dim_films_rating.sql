
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select rating
from "analytics"."dbt_assignment_assignment"."dim_films"
where rating is null



  
  
      
    ) dbt_internal_test