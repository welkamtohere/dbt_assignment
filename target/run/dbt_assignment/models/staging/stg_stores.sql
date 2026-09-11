
  create view "analytics"."dbt_assignment_assignment"."stg_stores__dbt_tmp"
    
    
  as (
    -- Staging = light clean-up over ONE source (Pagila's store table).
with source as (

    select * from "analytics"."public"."store"

)

select
    store_id, 
    manager_staff_id, 
    address_id
from source
  );