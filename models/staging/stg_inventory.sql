-- Staging = light clean-up over ONE source (Pagila's inventory table).
with source as (

    select * from {{ source('pagila', 'inventory') }}

)

select
    inventory_id, 
    film_id, 
    store_id
from source
