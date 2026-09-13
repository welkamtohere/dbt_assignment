with films as (
    select 
        film_id, 
        title, 
        category, 
        rental_rate, 
        inventory_count,
        times_rented
    from "analytics"."dbt_assignment_assignment"."dim_films"
),
payments as (
    select * from "analytics"."dbt_assignment_assignment"."fact_payments"
)


select
    f.film_id,
    f.title,
    f.category,
    f.rental_rate,
    f.inventory_count,
    f.times_rented,
    coalesce(sum(p.amount), 0) as total_revenue
from films f
left join payments p on p.film_id = f.film_id
group by f.film_id, f.title, f.category, f.rental_rate, f.inventory_count, f.times_rented