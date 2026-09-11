-- One cleaned row per film category label.
with source as (

    select * from "analytics"."public"."category"

)

select
    category_id,
    name as category_name,
    last_update
from source