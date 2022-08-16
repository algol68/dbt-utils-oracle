{% macro oracle__generate_series(upper_bound) %}

    Select rownum generated_numbers
    From dual
    Connect By Rownum <= {{upper_bound}}
    
{% endmacro %}
