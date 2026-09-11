
    
    

select
    payment_id as unique_field,
    count(*) as n_records

from "analytics"."dbt_assignment_assignment"."stg_payments"
where payment_id is not null
group by payment_id
having count(*) > 1


