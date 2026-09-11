Total total_revenue di mart_daily_revenue sesuai dengan total amount di stg_payments.
Total total_payments di mart_daily_revenue sesuai dengan jumlah payment di stg_payments.






with payments as (
    select 
    customer_id,
    sum(amount) as expected_total_payments,
    count(payment_id) as expected_total_payment_count
    from {{ ref('stg_payments') }}
    group by customer_id
),
marts as (
    select 
    store_id,
    total_revenue,
    total_payments
    from {{ ref('mart_daily_revenue') }}
    group by store_id
)



select
    m.store_id,
    m.total_payments,
    p.expected_total_payment_count,
    'total_payments_mismatches' as mismatch_type
from marts m
join payments p on p.store_id = m.store_id
where m.total_payments != p.expected_total_payment_count    

union all

select
    m.store_id,
    m.total_revenue,
    p.expected_total_revenue
    'total_revenue_mismatches' as mismatch_type
from marts m
join revenue p on p.store_id = m.store_id
where m.total_revenue != p.expected_total_revenue
