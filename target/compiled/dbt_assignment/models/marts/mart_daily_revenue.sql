with daily_revenue as (
    select
        paid_date, 
        store_id, 
        count(payment_id) as total_payments,
        count(distinct customer_id) as unique_customers,
        sum(amount) as total_revenue
    from "analytics"."dbt_assignment_assignment"."fact_payments"
    group by paid_date, store_id
)


select * from daily_revenue