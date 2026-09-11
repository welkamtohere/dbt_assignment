
  create view "analytics"."dbt_assignment_assignment"."stg_rentals__dbt_tmp"
    
    
  as (
    -- Staging = light clean-up over ONE source (Pagila's rental table).
with source as (

    select * from "analytics"."public"."rental"

)


select
    rental_id, 
    customer_id, 
    inventory_id, 
    staff_id, 
    rented_at, 
    returned_at
from source
  );