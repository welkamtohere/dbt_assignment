
    
    

select
    rental_id as unique_field,
    count(*) as n_records

from "analytics"."dbt_assignment_assignment"."stg_rentals"
where rental_id is not null
group by rental_id
having count(*) > 1


