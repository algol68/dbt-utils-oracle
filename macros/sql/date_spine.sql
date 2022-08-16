{% macro oracle__date_spine(datepart, start_date, end_date) %}

    select (to_date({{start_date}}, 'YYYY-MM-DD') + rownum - 1) as date_{{datepart}}
    from dual
    connect by rownum <= {{ dbt_utils.get_intervals_between(start_date, end_date, datepart) }}

{% endmacro %}
