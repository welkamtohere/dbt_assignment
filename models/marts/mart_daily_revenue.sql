Kolom: paid_date, store_id, total_payments, unique_customers, total_revenue.
Gunakan fact_payments sebagai sumber data.
total_payments = jumlah payment per paid_date dan store_id.
unique_customers = jumlah customer unik per paid_date dan store_id.
total_revenue = total amount per paid_date dan store_id.



with daily_revenue as (
    select
        paid_date, 
        store_id, 
        count(payment_id) as total_payments,
        count(distinct customer_id) as unique_customers,
        sum(amount) as total_revenue
    from {{ ref('fact_payments') }}
    group by paid_date, store_id
)


select * from daily_revenue
