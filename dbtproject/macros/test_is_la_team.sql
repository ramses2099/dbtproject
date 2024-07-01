{% macro test_is_la_team(model, column_name)%}

with validation as(
    select 
        {{ column_name }} as City,
        Name
    from {{ model }}
),

validation_errors as(
    select
        City       
    from validation
    where City = 'Los Angeles'
        and Name not in('Lakers','Clippers')
)

select count(*)
from validation_errors
having count(*) > 0

{% endmacro %}