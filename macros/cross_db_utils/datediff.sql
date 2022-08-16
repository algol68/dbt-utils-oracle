{% macro oracle__datediff(first_date, second_date, datepart) -%}

    to_date({{second_date}}, 'YYYY-MM-DD') - to_date({{first_date}}, 'YYYY-MM-DD') from dual

{%- endmacro %}