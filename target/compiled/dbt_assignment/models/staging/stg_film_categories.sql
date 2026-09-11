-- Bridge table: which categories each film belongs to.
with source as (

    select * from "analytics"."public"."film_category"

)

select
    film_id,
    category_id,
    last_update
from source