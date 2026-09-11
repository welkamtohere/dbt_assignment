
    
    

select
    store_id as unique_field,
    count(*) as n_records

from "analytics"."dbt_assignment_assignment"."stg_stores"
where store_id is not null
group by store_id
having count(*) > 1


