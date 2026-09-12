-- Staging = light clean-up over ONE source (Pagila's film table).
with source as (

    select * from "analytics"."public"."film"

)

select
    film_id, 
    title, 
    description, 
    rental_rate, 
    replacement_cost, 
    length as length_minutes, 
    rating::text as rating
from source