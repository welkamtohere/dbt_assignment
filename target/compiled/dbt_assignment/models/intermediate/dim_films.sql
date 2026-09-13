with films as (
    select * from "analytics"."dbt_assignment_assignment"."stg_films"
),
categories as (
    select 
        fc.film_id, 
        string_agg(c.name, ', ') as category
    from "analytics"."dbt_assignment_assignment"."stg_film_categories" fc
    join "analytics"."dbt_assignment_assignment"."stg_categories" c on c.category_id = fc.category_id
    group by fc.film_id
),

inventories as (
    SELECT
        count(inventory_id) as inventory_count,
        film_id
    from "analytics"."dbt_assignment_assignment"."stg_inventory"
    group by film_id
),  

rentals as (
    select 
        i.film_id, 
        count(r.rental_id) as times_rented
    from "analytics"."dbt_assignment_assignment"."stg_inventory" i
    left join "analytics"."dbt_assignment_assignment"."stg_rentals" r on r.inventory_id = i.inventory_id
    group by i.film_id
)


select
    f.film_id,
    f.title,
    c.category,
    f.rating,
    rd.description as rating_description,
    f.rental_rate,
    coalesce(i.inventory_count, 0) as inventory_count,
    coalesce(r.times_rented, 0) as times_rented,
    case when coalesce(i.inventory_count, 0) > 0 then true else false end as is_available
from films f
left join categories c on c.film_id = f.film_id
left join "analytics"."dbt_assignment_assignment"."rating_descriptions" rd on rd.rating = f.rating
left join inventories i on i.film_id = f.film_id
left join rentals r on r.film_id = f.film_id