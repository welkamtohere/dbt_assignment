3.1 mart_customer_performance
Kolom: customer_id, customer_name, total_rentals, first_rented_at, last_rented_at, lifetime_payment_total, average_payment_value.
Gunakan dim_customers sebagai sumber data.
average_payment_value = lifetime_payment_total / total_rentals.
Jika total_rentals = 0 → average_payment_value = 0 (hindari pembagian nol).


with customer_performance as (
    select 
        customer_id, 
        customer_name , 
        total_rentals, 
        first_rented_at, 
        last_rented_at, 
        lifetime_payment_total,
    case when 
        total_rentals = 0 then 0 else 
        lifetime_payment_total / total_rentals end as average_payment_value
    from {{ ref('dim_customers') }}
)


select * from customer_performance




