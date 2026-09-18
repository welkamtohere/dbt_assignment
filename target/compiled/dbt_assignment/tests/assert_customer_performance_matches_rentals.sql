

with rentals as (
    select 
    customer_id, 
    count(rental_id) as expected_total_rentals
    from "analytics"."dbt_assignment_assignment"."stg_rentals"
    group by customer_id
),
payments as (
    select 
    customer_id,
    sum(amount) as expected_total_payments
    from "analytics"."dbt_assignment_assignment"."stg_payments"
    group by customer_id
),
marts as (
    select 
    customer_id,
    total_rentals,
    lifetime_payment_total
    from "analytics"."dbt_assignment_assignment"."mart_customer_performance"
)



select
    m.customer_id,
    m.total_rentals,
    r.expected_total_rentals
    'total_rentals_mismatches' as mismatch_type
from marts m
join rentals r on r.customer_id = m.customer_id`
where m.total_rentals != r.expected_total_rentals 

union all

select
    m.customer_id,
    m.lifetime_payment_total,
    p.expected_total_payments
    'total_payments_mismatches' as mismatch_type
from marts  m
join payments p on p.customer_id = m.customer_id
where m.lifetime_payment_total != p.expected_total_payments