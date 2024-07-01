{{ config(materialized='table') }}

with teams as (
    select name from {{ ref('team_locations')}}
)

select *
from teams