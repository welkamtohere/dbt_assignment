-- Staging = light clean-up over ONE source (Pagila's rental table).
with source as (

    select * from {{ source('pagila', 'rental') }}

)


select
    rental_id, 
    customer_id, 
    inventory_id, 
    staff_id, 
    rented_at, 
    returned_at
from source
