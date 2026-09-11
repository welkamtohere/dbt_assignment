
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select payment_date
from "analytics"."dbt_assignment_assignment"."stg_payments"
where payment_date is null



  
  
      
    ) dbt_internal_test