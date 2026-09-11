-- Staging = light clean-up over ONE source (Pagila's store table).
with source as (

    select * from "analytics"."public"."store"

)

select
    store_id, 
    manager_staff_id, 
    address_id
from source