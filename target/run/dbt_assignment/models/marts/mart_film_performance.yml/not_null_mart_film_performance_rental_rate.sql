
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select rental_rate
from "analytics"."dbt_assignment_assignment"."mart_film_performance"
where rental_rate is null



  
  
      
    ) dbt_internal_test