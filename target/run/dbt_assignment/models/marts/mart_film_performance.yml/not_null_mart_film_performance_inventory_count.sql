
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select inventory_count
from "analytics"."dbt_assignment_assignment"."mart_film_performance"
where inventory_count is null



  
  
      
    ) dbt_internal_test