
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select times_rented
from "analytics"."dbt_assignment_assignment"."mart_film_performance"
where times_rented is null



  
  
      
    ) dbt_internal_test