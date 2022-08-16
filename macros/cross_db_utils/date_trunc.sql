{#-/* reference: https://www.techonthenet.com/oracle/functions/trunc_date.php */#}
{% macro oracle__date_trunc(datepart, date) -%}
{%- if datepart == 'day' -%}
    trunc({{date}}, 'DDD')  
{%- elif datepart == 'week' -%}
    trunc({{date}}, 'WW')  
{%- elif datepart == 'month' -%}
    trunc({{date}}, 'MON') 
{%- elif datepart == 'quarter' -%}
    trunc({{date}}, 'Q')        
{%- elif datepart == 'year' -%}
    trunc({{date}}, 'YYYY')
{% else %}
        {{ exceptions.raise_compiler_error("Unsupported datepart for macro date_trunc in oracle: {!r}".format(datepart)) }}    
{%- endif -%}    
{%- endmacro %}