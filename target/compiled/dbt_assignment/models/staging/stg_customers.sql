-- Staging = light clean-up over ONE source (Pagila's customer table).
with source as (

    select * from "analytics"."public"."customer"

)


select
    customer_id,
    first_name,
    last_name,
    first_name || ' ' || last_name as full_name,   -- macro
    email,
    activebool as is_active,
    create_date,
    last_update
from source