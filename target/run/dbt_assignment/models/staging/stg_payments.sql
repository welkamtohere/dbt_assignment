
  create view "analytics"."dbt_assignment_assignment"."stg_payments__dbt_tmp"
    
    
  as (
    -- Staging = light clean-up over ONE source (Pagila's payment table).
with source as (

    select * from "analytics"."public"."payment"

)


select
    payment_id, 
    customer_id, 
    rental_id, 
    staff_id, 
    amount, 
    payment_date as paid_at
from source
  );