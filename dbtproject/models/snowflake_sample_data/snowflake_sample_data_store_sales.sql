with source_store_sales as (
    select * 
    from {{source('scr_nowflake_sample_data', 'STORE_SALES')}}
    limit 100
)
select 
*
from source_store_sales