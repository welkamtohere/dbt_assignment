
{{
  config(
    materialized='incremental',
    unique_key='payment_id'
  )
}}

with payments as (

    select * from {{ ref('stg_payments') }}

),

customers as (
    select customer_id, full_name from {{ ref('stg_customers') }}
),

rentals as (

    select 
        r.rental_id, 
        i.film_id, 
        i.store_id
    from {{ ref('stg_rentals') }} r
    left join {{ ref('stg_inventory') }} i on i.inventory_id = r.inventory_id
),
films as (
    select film_id, title from {{ ref('stg_films') }}
)

select
    p.payment_id, 
    p.paid_at, 
    p.paid_date, 
    p.customer_id, 
    c.full_name as customer_name, 
    p.staff_id, 
    r.store_id, 
    p.rental_id, 
    f.film_id, 
    f.title as film_title, 
    p.amount
from payments p
left join customers c on c.customer_id = p.customer_id
left join rentals r on r.rental_id = p.rental_id
left join films f on f.film_id = r.film_id

