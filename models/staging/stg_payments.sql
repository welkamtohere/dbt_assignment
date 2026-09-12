-- Staging = light clean-up over ONE source (Pagila's payment table).
with source as (

    select * from {{ source('pagila', 'payment') }}

)


select
    payment_id, 
    customer_id, 
    rental_id, 
    staff_id, 
    amount, 
    payment_date as paid_at
from source
