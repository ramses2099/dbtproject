with teams as(
    select * from {{ ref('teams')}}
),
team_locations as (
    select * from {{ ref('team_locations') }}
),
final as(
    select
        t1.name,
        tl.city,
        tl.state
    from teams t1
    inner join team_locations tl on tl.name = t1.name
)
select
* 
from final